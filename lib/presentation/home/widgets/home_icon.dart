import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dad_jokes_flutter/presentation/core/asset_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

const double homeIconSize = 10;

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: homeIconSize.w,
        height: homeIconSize.w,
        child: SvgPicture.asset(HomeAssetProvider.homeIconAsset, semanticsLabel: "Smile"));
  }
}
