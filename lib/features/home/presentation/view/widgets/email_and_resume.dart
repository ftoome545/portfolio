import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/app_styles.dart';

class EmailAndResume extends StatelessWidget {
  const EmailAndResume({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Let’s connect", style: AppStyles.styleRegular76(context)),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              'Say hello at',
              style: AppStyles.styleRegular18(context),
            ),
            const SizedBox(
              width: 3,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: AppColors.primaryColor2,
                  width: 1.0,
                ))),
                child: Text(
                  'fatimahure98@gmail.com',
                  style: AppStyles.styleRegular18(context).copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              "For more info, here’s my",
              style: AppStyles.styleRegular18(context),
            ),
            const SizedBox(
              width: 3,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: AppColors.primaryColor2,
                  width: 1.0,
                ))),
                child: Text(
                  'resume',
                  style: AppStyles.styleRegular18(context).copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
