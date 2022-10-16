import 'package:dad_jokes_flutter/presentation/core/widgets/error_card_widget.dart';
import 'package:flutter/material.dart';

class SubmitJokeWidget extends StatelessWidget {
  const SubmitJokeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ErrorCardWidget(retry: () {});
  }
}
