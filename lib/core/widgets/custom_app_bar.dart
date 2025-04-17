import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Fatima Hure',
            style: AppStyles.styleRegular32(context),
          ),
          Row(
            children: [
              Text(
                'Home',
                style: AppStyles.styleInterMedium16(context),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'About',
                style: AppStyles.styleInterMedium16(context),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Contact',
                style: AppStyles.styleInterMedium16(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
