import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:dad_jokes_flutter/application/core/ui_state.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/error_card_widget.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/joke_loading_widget.dart';
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
    return BlocConsumer<RandomJokeBloc, UIState<JokeViewModel>>(
      builder: (context, state) {
        switch (state.status) {
          case UIStatus.initial:
            return _initWidget(context);
          case UIStatus.success:
            return _buildJokeWidget((state as Success<JokeViewModel>), context);
          case UIStatus.loading:
            return JokeLoadingWidget();
          case UIStatus.error:
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
            _requestJoke(context);
          },
        ));
  }

  Widget _buildJokeWidget(Success<JokeViewModel> state, BuildContext context) {
    return JokeWidget(
        joke: state.data,
        onClick: () {
          _requestJoke(context);
        });
  }

  Widget _initWidget(BuildContext context) {
    _requestJoke(context);
    return JokeLoadingWidget();
  }

  void _requestJoke(BuildContext context) {
    context
        .read<RandomJokeBloc>()
        .add(const RandomJokeEvent.onRandomJokeRequested());
  }
}
