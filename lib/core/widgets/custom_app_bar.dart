import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Fatima Hure',
          style: TextStyle(color: AppColors.secondryColor, fontSize: 30),
        ),
        Spacer(),
        Text(
          'Home',
          style: TextStyle(color: AppColors.secondryColor, fontSize: 16),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          'About',
          style: TextStyle(color: AppColors.secondryColor, fontSize: 16),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          'Contact',
          style: TextStyle(color: AppColors.secondryColor, fontSize: 16),
        ),
      ],
    );
  }
}
