import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:dad_jokes_flutter/presentation/joke_list/widgets/joke_card.dart';
import 'package:flutter/material.dart';

class JokeListViewWidget extends StatelessWidget {
  final ScrollController controller;
  final List<JokeViewModel> list;

  JokeListViewWidget({required this.controller, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: controller,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return JokeCard(joke: list[index]);
        });
  }
}
