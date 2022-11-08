import 'package:dad_jokes_flutter/presentation/core/string_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dad_jokes_flutter/presentation/home/widgets/home_icon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

const double titleFontSize = 22;

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HomeIcon(),
        SizedBox(
          height: 4.h,
        ),
        Text(StringProvider.appName,
            style: GoogleFonts.lato(fontSize: titleFontSize.sp))
      ],
    );
  }
}
