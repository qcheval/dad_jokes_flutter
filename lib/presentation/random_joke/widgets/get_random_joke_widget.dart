import 'package:dad_jokes_flutter/presentation/core/asset_provider.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/error_card_widget.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/joke_loading_widget.dart';
import 'package:dad_jokes_flutter/presentation/random_joke/widgets/joke_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dad_jokes_flutter/application/random_joke/random_joke_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
            return _initWidget(context);
          case RandomJokeStatus.success:
            return _buildJokeWidget(state, context);
          case RandomJokeStatus.loading:
            return JokeLoadingWidget();
          case RandomJokeStatus.error:
          default:
            return _buildError(context);
        }
      },
      listener: (context, state) {},
    );
  }

  Widget _buildError(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
        child: ErrorCardWidget(
          retry: () {
            context
                .read<RandomJokeBloc>()
                .add(const RandomJokeEvent.onRandomJokeRequested());
          },
        ));
  }

  Widget _buildJokeWidget(RandomJokeState state, BuildContext context) {
    return JokeWidget(
        joke: state.jokeViewModel!,
        onClick: () {
          context
              .read<RandomJokeBloc>()
              .add(const RandomJokeEvent.onRandomJokeRequested());
        });
  }

  Widget _initWidget(BuildContext context) {
    context.read<RandomJokeBloc>().add(const RandomJokeEvent.onRandomJokeRequested());
    return JokeLoadingWidget();
  }
}
