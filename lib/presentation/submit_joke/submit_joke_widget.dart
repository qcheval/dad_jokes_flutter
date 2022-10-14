import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dad_jokes_flutter/presentation/core/asset_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SubmitJokeWidget extends StatelessWidget {
  const SubmitJokeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "SJ",
          style: TextStyle(fontSize: 18.sp),
        ),
    );
  }
}
