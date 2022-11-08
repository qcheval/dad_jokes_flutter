import 'package:auto_route/auto_route.dart';
import 'package:dad_jokes_flutter/presentation/home/home_page_widget.dart';
import 'package:dad_jokes_flutter/presentation/random_joke/random_joke_widget.dart';
import 'package:dad_jokes_flutter/presentation/submit_joke/submit_joke_widget.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePageWidget, initial: true),
    AutoRoute(page: RandomJokeWidget),
    AutoRoute(page: SubmitJokeWidget),
  ],
)
class $AppRouter {}
