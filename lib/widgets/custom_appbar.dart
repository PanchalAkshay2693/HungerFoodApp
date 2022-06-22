import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../base/constants/app_colors.dart';
import '../base/constants/app_images.dart';
import '../base/widgets/appbar_view.dart';

Widget buildAppBar(BuildContext context) {
  return AppBarView(
    color: white,
    centerTitle: true,
    height: const Size.fromHeight(44),
    title: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SvgPicture.asset(
        AppImages.icSmallLogo,
      ),
    ),
    bottomLineWidget: PreferredSize(
        child: Container(
          height: 1,
          color: dividerColor,
        ),
        preferredSize: const Size.fromHeight(1)),
  );
}
