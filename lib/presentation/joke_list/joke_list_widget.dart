import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:dad_jokes_flutter/application/core/ui_state.dart';
import 'package:dad_jokes_flutter/application/joke_list/joke_list_bloc.dart';

import 'package:dad_jokes_flutter/injection.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/error_card_widget.dart';
import 'package:dad_jokes_flutter/presentation/joke_list/widgets/joke_listview_widget.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/joke_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JokeListWidget extends StatelessWidget {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<JokeListBloc>(),
      child: BlocConsumer<JokeListBloc, UIState<List<JokeViewModel>>>(
        builder: (context, state) {
          return state.map(
              initial: (initial) => _initWidget(context),
              success: (success) => _buildStack(context, state),
              error: (error) => _showError(context),
              loading: (loading) => _buildStack(context, state));
        },
        listener: (context, state) {},
      ),
    );
  }

  Widget _showError(BuildContext context) {
    return ErrorCardWidget(retry: () {
      _requestJokeList(context);
    });
  }

  Center _initWidget(BuildContext context) {
    _controller.addListener(() {
      if (_controller.position.atEdge && _controller.position.pixels != 0) {
        _requestJokeList(context);
      }
    });
    _requestJokeList(context);
    return Center(child: CircularProgressIndicator());
  }

  void _requestJokeList(BuildContext context) {
    context.read<JokeListBloc>().add(JokeListEvent.onJokeListRequested());
  }

  Widget _buildStack(BuildContext context, UIState state) {
    return Stack(
      children: [
        _buildListView(context, context.read<JokeListBloc>().jokeList),
        Visibility(child: JokeLoadingWidget(), visible: state is Loading)
      ],
    );
  }

  Widget _buildListView(BuildContext context, List<JokeViewModel> list) {
    return JokeListViewWidget(controller: _controller, list: list);
  }
}
