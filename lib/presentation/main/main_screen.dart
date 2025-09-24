import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text("Home con 5 tabs")),
            body: pages[state.index],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.index,
              onTap: (i) {
                context.read<NavigationBloc>().add(ChangeTabEvent(i));
              },
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Tab 1"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Tab 2",
                ),
                BottomNavigationBarItem(icon: Icon(Icons.add), label: "Tab 3"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: "Tab 4",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Tab 5",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
