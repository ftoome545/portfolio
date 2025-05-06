import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_1/core/services/get_it_service.dart';
import 'package:practice_1/core/services/scroll_service.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/core/utils/app_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                icon: SvgPicture.asset(Assets.imagesMenuCloseIcon),
                onPressed: () => Navigator.of(context).pop(),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          getIt<ScrollService>().scrollTo(
                              getIt<ScrollService>().featuredProjectKey);
                        },
                        child: Text(
                          'Projects',
                          style: AppStyles.styleInterMedium16(context),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
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
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          getIt<ScrollService>().scrollTo(
                              getIt<ScrollService>().myCapabilitiesKey);
                        },
                        child: Text(
                          'Skills',
                          style: AppStyles.styleInterMedium16(context),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
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
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
