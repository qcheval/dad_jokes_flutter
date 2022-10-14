import 'package:dad_jokes_flutter/presentation/random_joke/widgets/joke_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dad_jokes_flutter/application/random_joke/random_joke_bloc.dart';

class GetRandomJokeWidget extends StatelessWidget {
  const GetRandomJokeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RandomJokeBloc, RandomJokeState>(
      builder: (context, state) {
        switch (state.status) {
          case RandomJokeStatus.initial:
            WidgetsBinding.instance.addPostFrameCallback((_) =>
                context.read<RandomJokeBloc>()
                  ..add(const RandomJokeEvent.onRandomJokeRequested()));
            return _buildLoader();
          case RandomJokeStatus.success:
            return JokeWidget(
                joke: state.jokeViewModel!,
                onClick: () {
                  context
                      .read<RandomJokeBloc>()
                      .add(const RandomJokeEvent.onRandomJokeRequested());
                });
          case RandomJokeStatus.loading:
            return _buildLoader();
          case RandomJokeStatus.error:
          default:
            return const Center();
        }
      },
      listener: (context, state) {},
    );
  }

  Widget _buildLoader() {
    return SizedBox.expand(
      child: Container(
        color: Colors.white,
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
