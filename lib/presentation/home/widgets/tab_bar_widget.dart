import 'package:dad_jokes_flutter/presentation/core/asset_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dad_jokes_flutter/application/home/home_bloc.dart';
import 'package:dad_jokes_flutter/application/home/tab_index.dart';
import 'package:dad_jokes_flutter/presentation/joke_list/joke_list_widget.dart';
import 'package:dad_jokes_flutter/presentation/random_joke/random_joke_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: Padding(padding: EdgeInsets.all(8), child: SvgPicture.asset(HomeAssetProvider.homeIconAsset)),
              title: Text(
                "ICanHasDadJokes",
                style: GoogleFonts.lato(),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.change_circle_sharp),
                      label: "Random Joke"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.format_list_bulleted),
                      label: "Joke List"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.post_add), label: "Submit Joke")
                ],
                onTap: (index) {
                  _onItemTapped(context, index);
                },
                currentIndex: state.index.index),
            body: _widgetForIndex(state.index),
          );
        },
        listener: (context, state) {});
  }

  void _onItemTapped(BuildContext context, int index) {
    context.read<HomeBloc>().add(HomeEvent.onItemTaped(TabIndex.values[index]));
  }

  Widget _widgetForIndex(TabIndex index) {
    switch (index) {
      case TabIndex.random:
        return RandomJokeWidget();
      case TabIndex.list:
        return JokeListWidget();
      case TabIndex.submit:
        return Center();
    }
  }
}
