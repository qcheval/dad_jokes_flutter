import 'package:dad_jokes_flutter/presentation/core/string_provider.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ErrorCardWidget extends StatelessWidget {
  final void Function() retry;

  const ErrorCardWidget({super.key, required this.retry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 3,
        child: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Lottie.asset("assets/animations/error_animation.json",
                    width: 50.w, height: 50.w),
                Text(
                  StringProvider.errorMessage,
                  style: GoogleFonts.lato(fontSize: 18.sp),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                ),
                Row(
                  children: [
                    CustomButton(title: StringProvider.retry, onClick: retry),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
