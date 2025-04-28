import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_styles.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Featured Projects',
          style: AppStyles.styleRegular43(context),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Here are some of the selected projects that showcase my passion for front-end development.',
          style: AppStyles.styleRegular16(context),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
