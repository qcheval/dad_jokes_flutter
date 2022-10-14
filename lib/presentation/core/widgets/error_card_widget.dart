import 'package:dad_jokes_flutter/presentation/core/asset_provider.dart';
import 'package:dad_jokes_flutter/presentation/core/widgets/custom_button.dart';
import 'package:dad_jokes_flutter/presentation/string_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                HomeAssetProvider.homeIconAsset,
                width: 50.w,
                height: 50.w,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  StringProvider.errorMessage,
                  style: GoogleFonts.lato(fontSize: 18.sp),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: CustomButton(title: StringProvider.retry, onClick: retry),
              )
            ],
          ),
        ),
      ),
    );
  }
}