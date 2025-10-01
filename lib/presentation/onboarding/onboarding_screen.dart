import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/core/exports.dart';

import 'package:tejidosmalo/core/widgets/button_widget.dart';
import 'package:tejidosmalo/logic/route/route_bloc.dart';
import 'package:tejidosmalo/logic/route/route_event.dart';
import 'package:tejidosmalo/logic/route/route_state.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RouteBloc, RouteState>(
      listener: (context, state) {
        if (state is MainState) {
          Navigator.of(context).pushReplacementNamed('/');
        }
      },
      child: SafeArea(
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
                      FadeInLeft(
                        child: Image.asset(MyImages.splash1, width: 100),
                      ),
                      Positioned(
                        right: -60,
                        bottom: -60,
                        child: FadeInRight(
                          child: Image.asset(
                            MyImages.splash2,
                            width: 85,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Spacer(),
                FadeInUp(
                  from: 20,
                  child: Text(
                    "Crafting Joy, One Stitch at a Time",
                    style: MyStyles.instance.yellow36W700Outfit,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 50),
                FadeInUp(
                  from: 30,
                  child: Text(
                    "Discover exquisite handmade crochet creations, connect with artisans, and bring cozy charm into your life with CozyStitch Marketplace.",
                    style: MyStyles.instance.gray16W500OpenSans,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 40),
                FadeInUp(
                  from: 40,
                  child: ButtonWidget(
                    onTap: () {
                      context.read<RouteBloc>().add(GoToMain());
                    },
                    text: "Get Started",
                    isFill: false,
                    isBlocked: false,
                    width: 200,
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
