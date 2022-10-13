import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dad_jokes_flutter/application/home/home_bloc.dart';
import 'package:dad_jokes_flutter/injection.dart';
import 'package:dad_jokes_flutter/presentation/home/widgets/tab_bar_widget.dart';

const double homePagePadding = 8;
const int tabNumber = 3;

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<HomeBloc>(),
      child: DefaultTabController(length: tabNumber, child: TabBarWidget()),
    );
  }
}
