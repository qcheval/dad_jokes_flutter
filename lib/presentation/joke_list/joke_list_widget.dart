import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:dad_jokes_flutter/application/joke_list/joke_list_bloc.dart';

import 'package:dad_jokes_flutter/injection.dart';
import 'package:dad_jokes_flutter/presentation/joke_list/widgets/joke_listview_widget.dart';
import 'package:dad_jokes_flutter/presentation/joke_list/widgets/joke_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JokeListWidget extends StatelessWidget {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<JokeListBloc>(),
      child: BlocConsumer<JokeListBloc, JokeListState>(
        builder: (context, state) {
          switch (state.status) {
            case JokeListStatus.initial:
              return _initWidget(context);
            case JokeListStatus.loading:
            case JokeListStatus.success:
              return _buildStack(context, state);
            case JokeListStatus.error:
              return _showError();
          }
        },
        listener: (context, state) {},
      ),
    );
  }

  Center _showError() {
    return Center(
      child: Text("An error occured while fetching your jokes"),
    );
  }

  Center _initWidget(BuildContext context) {
    _controller.addListener(() {
      if (_controller.position.atEdge && _controller.position.pixels != 0) {
        context.read<JokeListBloc>().add(JokeListEvent.onJokeListRequested());
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        context.read<JokeListBloc>()..add(JokeListEvent.onJokeListRequested()));
    return Center(child: CircularProgressIndicator());
  }

  Widget _buildStack(BuildContext context, JokeListState state) {
    return Stack(
      children: [
        _buildListView(context, state.jokeList),
        Visibility(
            child: JokeLoadingWidget(),
            visible: state.status == JokeListStatus.loading)
      ],
    );
  }

  Widget _buildListView(BuildContext context, List<JokeViewModel>? list) {
    if (list != null) {
      return JokeListViewWidget(controller: _controller, list: list);
    } else {
      return Center(child: Text("Joke List is empty! :("));
    }
  }
}
