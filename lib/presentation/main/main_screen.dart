import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/core/exports.dart';
import 'package:tejidosmalo/logic/navigation/navigation_bloc.dart';
import 'package:tejidosmalo/logic/navigation/navigation_event.dart';
import 'package:tejidosmalo/logic/navigation/navigation_state.dart';
import 'package:tejidosmalo/presentation/gallery/gallery_screen.dart';
import 'package:tejidosmalo/presentation/home/home_screen.dart';
import 'package:tejidosmalo/presentation/more/more_screen.dart';
import 'package:tejidosmalo/presentation/notifications/notifications_screen.dart';
import 'package:tejidosmalo/presentation/profile/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(),
      GalleryScreen(),
      ProfileScreen(),
      NotificationsScreen(),
      MoreScreen(),
    ];

    final List<String> titles = [
      "Mercado de Punta Acogedora",
      "Galería de Inspiración",
      "Mi Perfil",
      "Notificaciones",
      "Sobre nosotros & Contáctanos",
    ];

    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                titles[state.index],
                textAlign: TextAlign.center,
                style: MyStyles.instance.yellow18W700Outfit,
              ),
              backgroundColor: MyColors.instance.bgBottomNavigationBar,
            ),
            body: pages[state.index],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.index,
              onTap: (i) {
                context.read<NavigationBloc>().add(ChangeTabEvent(i));
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: MyColors.instance.yellowCF9201,
              backgroundColor: MyColors.instance.bgBottomNavigationBar,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.image_sharp),
                  label: "Gallery",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: "Updates",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz),
                  label: "More",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
