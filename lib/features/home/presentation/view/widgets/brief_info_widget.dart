import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/core/widgets/contact_me.dart';

class BriefInfo extends StatelessWidget {
  const BriefInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'hi, i am ',
                          style: AppStyles.styleRegular101(context)),
                      TextSpan(
                          text: 'Fatima Hure.',
                          style: AppStyles.styleRegular101(context)),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'A Sydney based front-end developer passionate about building accessible and user friendly websites.',
                  style: AppStyles.styleRegular18(context),
                ),
                const SizedBox(
                  height: 40,
                ),
                const ContactMe()
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            height: 663,
            decoration: const BoxDecoration(
              color: AppColors.secondryColor,
              image: DecorationImage(
                image: NetworkImage("https://placehold.co/600x663"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
