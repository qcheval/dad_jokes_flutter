import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dad_jokes_flutter/domain/random_joke/bloc/random_joke_bloc.dart';
import 'package:dad_jokes_flutter/injection.dart';
import 'package:dad_jokes_flutter/presentation/random_joke/widgets/get_random_joke_widget.dart';

const double homePagePadding = 8;

class RandomJokeWidget extends StatelessWidget {
  const RandomJokeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => getIt<RandomJokeBloc>(),
        child: const GetRandomJokeWidget());
  }
}
