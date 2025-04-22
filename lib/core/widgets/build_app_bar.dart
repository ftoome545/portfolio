import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/app_styles.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.primaryColor,
    title: Text(
      textAlign: TextAlign.left,
      'Fatima Hure',
      style: AppStyles.styleRegular32(context),
    ),
    actions: [
      Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Text(
              'Home',
              style: AppStyles.styleInterMedium16(context),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'About',
              style: AppStyles.styleInterMedium16(context),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Contact',
              style: AppStyles.styleInterMedium16(context),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    ],
  );
}
