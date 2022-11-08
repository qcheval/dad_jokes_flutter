import 'package:dad_jokes_flutter/domain/core/bloc/ui_state.dart';
import 'package:dad_jokes_flutter/domain/home/bloc/home_bloc.dart';
import 'package:dad_jokes_flutter/domain/home/model/tab_index.dart';
import 'package:dad_jokes_flutter/presentation/core/asset_provider.dart';
import 'package:dad_jokes_flutter/presentation/core/string_provider.dart';
import 'package:dad_jokes_flutter/presentation/submit_joke/submit_joke_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dad_jokes_flutter/presentation/joke_list/joke_list_widget.dart';
import 'package:dad_jokes_flutter/presentation/random_joke/random_joke_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, SimpleUiState<TabIndex>>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: Padding(
                  padding: EdgeInsets.all(8),
                  child: SvgPicture.asset(HomeAssetProvider.homeIconAsset)),
              title: Text(
                StringProvider.appName,
                style: GoogleFonts.lato(),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.change_circle_sharp),
                      label: StringProvider.randomJoke),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.format_list_bulleted),
                      label: StringProvider.jokeList),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.post_add),
                      label: StringProvider.submitJoke)
                ],
                onTap: (index) {
                  _onItemTapped(context, index);
                },
                currentIndex: _getCurrentIndex(state)),
            body: _widgetForState(state),
          );
        },
        listener: (context, state) {});
  }

  void _onItemTapped(BuildContext context, int index) {
    context.read<HomeBloc>().add(HomeEvent.onItemTaped(TabIndex.values[index]));
  }

  Widget _widgetForState(SimpleUiState state) {
    return state.map(
      success: (success) => _widgetForIndex(success.data),
      initial: (initial) => _widgetForIndex(TabIndex.random),
    );
  }

  Widget _widgetForIndex(TabIndex index) {
    switch (index) {
      case TabIndex.random:
        return RandomJokeWidget();
      case TabIndex.list:
        return JokeListWidget();
      case TabIndex.submit:
        return SubmitJokeWidget();
    }
  }

  int _getCurrentIndex(SimpleUiState<TabIndex> state) {
    return state.map(
      initial: (initial) => TabIndex.random.index,
      success: (success) => success.data.index,
    );
  }
}
