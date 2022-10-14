import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


const double buttonHeight = 10.0;
const double buttonRadius = 18.0;
const int buttonFontSize = 18;

class CustomButton extends StatelessWidget {
  final String title;
  final void Function() onClick;

  const CustomButton({super.key, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          minimumSize: Size(80.w, 8.h),
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(buttonRadius))),
      onPressed: onClick,
      child: Text(
        title,
        style: GoogleFonts.lato(color: Colors.white, fontSize: buttonFontSize.sp),
      ),
    );
  }
}