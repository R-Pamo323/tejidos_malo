import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/app/theme/my_colors.dart';
import 'package:tejidosmalo/app/theme/my_images.dart';
import 'package:tejidosmalo/app/theme/my_styles.dart';
import 'package:tejidosmalo/core/widgets/button_widget.dart';
import 'package:tejidosmalo/logic/counter/counter_bloc.dart';
import 'package:tejidosmalo/logic/counter/counter_event.dart';
import 'package:tejidosmalo/logic/counter/counter_state.dart';

/*class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text("Contador")),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              children: [
                Text("El contador es: ${state.count}"),
                TextButton(
                  onPressed: () {
                    counterBloc.add(CounterIncrementPreseed());
                  },
                  child: Text("Subir"),
                ),
                TextButton(
                  onPressed: () {
                    counterBloc.add(CounterDecrementPressed());
                  },
                  child: Text("Bajar"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}*/

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: Container(
          color: MyColors.instance.background,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Transform.translate(
                offset: const Offset(-30, 0),
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(MyImages.splash1, width: 100),
                    Positioned(
                      right: -60,
                      bottom: -60,
                      child: Image.asset(
                        MyImages.splash2,
                        width: 85,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),
              Text(
                "Crafting Joy, One Stitch at a Time",
                style: MyStyles.instance.yellow36W700Outfit,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              Text(
                "Discover exquisite handmade crochet creations, connect with artisans, and bring cozy charm into your life with CozyStitch Marketplace.",
                style: MyStyles.instance.gray16W500OpenSans,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ButtonWidget(
                onTap: () {},
                text: "Get Started",
                isFill: false,
                isBlocked: false,
                width: 200,
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
