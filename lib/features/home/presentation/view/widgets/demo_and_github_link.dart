import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/app_styles.dart';

class DemoAndGitHubLink extends StatelessWidget {
  const DemoAndGitHubLink({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: AppStyles.styleBold14(context).copyWith(
                  color: AppColors.primaryColor2,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              SvgPicture.asset(icon),
            ],
          ),
          Container(
            height: 2,
            color: AppColors.primaryColor2,
            width: 150,
          ),
        ],
      ),
    );
  }
}
