import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JokeListElement extends StatelessWidget {
  final String text;

  const JokeListElement({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            text,
            style: GoogleFonts.lato(fontSize: 18.sp),
          ),
        ),
        Divider(color: Colors.black)
      ],
    );
  }
}
