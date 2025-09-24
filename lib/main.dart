import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/counter/counter_bloc.dart';
import 'package:tejidosmalo/logic/navigation/navigation_bloc.dart';
import 'package:tejidosmalo/logic/route/route_bloc.dart';
import 'package:tejidosmalo/presentation/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterBloc()),
          BlocProvider(create: (context) => RouteBloc()),
          BlocProvider(create: (context) => NavigationBloc()),
        ],

        child: SplashScreen(),
      ),
    );
  }
}
