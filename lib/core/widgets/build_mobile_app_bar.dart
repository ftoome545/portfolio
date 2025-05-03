import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/core/utils/app_styles.dart';

AppBar buildMobileAppBar(BuildContext context) {
  return AppBar(
      backgroundColor: AppColors.primaryColor,
      title: Text(
        textAlign: TextAlign.left,
        'Fatima Hure',
        style: AppStyles.styleRegular32(context),
      ),
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: SvgPicture.asset(Assets.imagesMenuIcon),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ),
      ]);
}
