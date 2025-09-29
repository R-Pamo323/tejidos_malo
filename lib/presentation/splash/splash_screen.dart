import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/core/exports.dart';
import 'package:tejidosmalo/core/widgets/button_widget.dart';
import 'package:tejidosmalo/logic/route/route_bloc.dart';
import 'package:tejidosmalo/logic/route/route_event.dart';
import 'package:tejidosmalo/logic/route/route_state.dart';
import 'package:tejidosmalo/presentation/onboarding/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //context.read<RouteBloc>().add(SplashStarted());

    return BlocListener<RouteBloc, RouteState>(
      listener: (context, state) {
        if (state is OnboardingState) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder:
                  (_) => BlocProvider.value(
                    value: context.read<RouteBloc>(),
                    child: const OnboardingScreen(),
                  ),
            ),
          );
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: null,
          body: Container(
            color: MyColors.instance.background,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInUp(
                  from: 150,
                  duration: const Duration(milliseconds: 1200),
                  child: Image.asset(MyImages.logo),
                ),
                FadeInUp(
                  from: 40,
                  child: ButtonWidget(
                    onTap: () {
                      context.read<RouteBloc>().add(GoToOnboarding());
                    },
                    text: "Get Started",
                    isFill: false,
                    isBlocked: false,
                    width: 200,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
