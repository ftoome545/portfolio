import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/core/widgets/contact_me.dart';
import 'package:practice_1/features/home/presentation/view/widgets/featured_projects.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeaturedProjects(
          title: 'About me',
          subTitle:
              'I am a front-end developer based in Sydney looking for exciting opportunities. Has Mechanical Engineering background. Likes to focus on accessibility when developing.',
          titleStyle: AppStyles.styleRegular43(context),
          subTittleStyle: AppStyles.styleRegular16(context),
        ),
        const SizedBox(
          height: 24,
        ),
        // GestureDetector(
        //   onTap: () {},
        //   child: Container(
        //     decoration: const BoxDecoration(
        //         border: Border(
        //             bottom: BorderSide(
        //       color: AppColors.primaryColor2,
        //       width: 2.0,
        //     ))),
        //     child: Text(
        //       'MORE ABOUT ME',
        //       style: AppStyles.styleBold14(context).copyWith(
        //         color: AppColors.primaryColor2,
        //       ),
        //     ),
        //   ),
        // ),
        ContactMe(
            onPressed: () {},
            title: 'DOWNLOAD RESUME',
            icon: Assets.imagesDownloadIcon),
      ],
    );
  }
}
