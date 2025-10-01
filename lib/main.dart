import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/app/app_router.dart';

import 'package:tejidosmalo/logic/navigation/navigation_bloc.dart';
import 'package:tejidosmalo/logic/route/route_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RouteBloc()),
        BlocProvider(create: (context) => NavigationBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        onGenerateRoute: _appRouter.onGenerateRoute,
        initialRoute: '/splash',
      ),
    );
  }
}
