import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/features/home/presentation/view/widgets/social_contact.dart';

class LetConnect extends StatelessWidget {
  const LetConnect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Let’s connect",
            style: MediaQuery.sizeOf(context).width < 800
                ? AppStyles.styleRegular43(context)
                : AppStyles.styleRegular76(context)),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          child: Row(
            children: [
              Text(
                'Say hello at',
                style: MediaQuery.sizeOf(context).width < 800
                    ? AppStyles.styleRegular16(context)
                    : AppStyles.styleRegular18(context),
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
                    style: MediaQuery.sizeOf(context).width < 800
                        ? AppStyles.styleRegular16(context).copyWith(
                            color: Colors.white,
                          )
                        : AppStyles.styleRegular18(context).copyWith(
                            color: Colors.white,
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          child: Row(
            children: [
              Text(
                "For more info, here’s my",
                style: MediaQuery.sizeOf(context).width < 800
                    ? AppStyles.styleRegular16(context)
                    : AppStyles.styleRegular18(context),
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
                    style: MediaQuery.sizeOf(context).width < 800
                        ? AppStyles.styleRegular16(context).copyWith(
                            color: Colors.white,
                          )
                        : AppStyles.styleRegular18(context).copyWith(
                            color: Colors.white,
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const SocialContact(),
      ],
    );
  }
}
