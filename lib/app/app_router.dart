import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/route/route_bloc.dart';
import 'package:tejidosmalo/logic/route/route_event.dart';
import 'package:tejidosmalo/presentation/custom_order/custom_order_screen.dart';
import 'package:tejidosmalo/presentation/detail_product/detail_product_screen.dart';
import 'package:tejidosmalo/presentation/main/main_screen.dart';
import 'package:tejidosmalo/presentation/onboarding/onboarding_screen.dart';
import 'package:tejidosmalo/presentation/splash/splash_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MainScreen());
      case '/splash':
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (_) => RouteBloc()..add(SplashStarted()),
                child: const SplashScreen(),
              ),
        );
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case '/detailProduct':
        return MaterialPageRoute(builder: (_) => DetailProductScreen());
      case '/customOrder':
        return MaterialPageRoute(builder: (_) => CustomOrderScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => const Scaffold(
                body: Center(child: Text('Página no encontrada')),
              ),
        );
    }
  }
}
