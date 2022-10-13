import 'package:flutter/material.dart';

import 'package:dad_jokes_flutter/app_router.gr.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'injection.dart';

Future<void> main() async {
  await configureInjection();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'iCanHasDadJokes',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
      );
    });
  }
}
