import 'package:dad_jokes_flutter/domain/joke/model/joke_entity.dart';
import 'package:dad_jokes_flutter/presentation/core/string_provider.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/custom_button.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/joke_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JokeWidget extends StatelessWidget {
  final JokeEntity joke;
  final void Function() onClick;

  const JokeWidget({
    Key? key,
    required this.joke,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(4.w, 0, 4.w, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          JokeCard(joke: joke),
          SizedBox(height: 5.h),
          Row(
            children: [
              CustomButton(title: StringProvider.getJoke, onClick: onClick)
            ],
          )
        ],
      ),
    );
  }
}
