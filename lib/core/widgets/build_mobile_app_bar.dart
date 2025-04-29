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
        GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 24),
              child: SvgPicture.asset(Assets.imagesMenuIcon),
            )),
      ]);
}
