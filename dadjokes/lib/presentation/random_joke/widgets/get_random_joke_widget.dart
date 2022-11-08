import 'package:dad_jokes_flutter/domain/core/bloc/ui_state.dart';
import 'package:dad_jokes_flutter/domain/joke/model/joke_entity.dart';
import 'package:dad_jokes_flutter/domain/random_joke/bloc/random_joke_bloc.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/error_card_widget.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/joke_loading_widget.dart';
import 'package:dad_jokes_flutter/presentation/random_joke/widgets/joke_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetRandomJokeWidget extends StatelessWidget {
  const GetRandomJokeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomJokeBloc, UIState<JokeEntity>>(
      builder: (context, state) {
        return state.map(
            initial: (initial) => _initWidget(context),
            success: (success) => _buildJokeWidget(success, context),
            error: (error) => _buildError(context),
            loading: (loading) => JokeLoadingWidget());
      },
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

  Widget _buildJokeWidget(Success<JokeEntity> state, BuildContext context) {
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
