import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dad_jokes_flutter/application/random_joke/random_joke_bloc.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/custom_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
            WidgetsBinding.instance.addPostFrameCallback(
                (_) => context.read<RandomJokeBloc>()..add(const RandomJokeEvent.onRandomJokeRequested()));
            return _buildLoader();
          case RandomJokeStatus.success:
            return _buildRandomJokeWidget(context, state);
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

  Widget _buildRandomJokeWidget(BuildContext context, RandomJokeState randomJokeState) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(randomJokeState.jokeViewModel?.text ?? ""),
        ),
        SizedBox(height: 10.h),
        CustomButton(
            title: "Get Joke",
            onClick: () {
              context.read<RandomJokeBloc>().add(const RandomJokeEvent.onRandomJokeRequested());
            })
      ],
    );
  }
}
