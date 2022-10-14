import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JokeWidget extends StatelessWidget {
  final JokeViewModel joke;
  final void Function() onClick;

  const JokeWidget({
    Key? key,
    required this.joke, required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(joke.text, style: GoogleFonts.lato(fontSize: 18.sp),),
        ),
        SizedBox(height: 10.h),
        CustomButton(title: "Get Joke", onClick: onClick)
      ],
    );
  }
}
