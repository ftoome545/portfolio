import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/core/widgets/contact_me.dart';
import 'package:practice_1/features/home/presentation/view/widgets/developer_image.dart';

class BriefInfo extends StatelessWidget {
  const BriefInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
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
            const Expanded(
              child: DeveloperImage(
                height: 663,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
