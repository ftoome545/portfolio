import 'package:flutter/material.dart';
import 'package:practice_1/core/services/get_it_service.dart';
import 'package:practice_1/core/services/scroll_service.dart';
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
            onTap: () {
              getIt<ScrollService>()
                  .scrollTo(getIt<ScrollService>().featuredProjectKey);
            },
            child: Text(
              'Projects',
              style: AppStyles.styleInterMedium16(context),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {
              getIt<ScrollService>()
                  .scrollTo(getIt<ScrollService>().aboutMeKey);
            },
            child: Text(
              'About',
              style: AppStyles.styleInterMedium16(context),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {
              getIt<ScrollService>()
                  .scrollTo(getIt<ScrollService>().myCapabilitiesKey);
            },
            child: Text(
              'Skills',
              style: AppStyles.styleInterMedium16(context),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {
              getIt<ScrollService>()
                  .scrollTo(getIt<ScrollService>().contactKey);
            },
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
