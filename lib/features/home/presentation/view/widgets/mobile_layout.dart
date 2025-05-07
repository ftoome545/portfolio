import 'package:flutter/material.dart';
import 'package:practice_1/constants.dart';
import 'package:practice_1/core/services/get_it_service.dart';
import 'package:practice_1/core/services/scroll_service.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/core/widgets/contact_me.dart';
import 'package:practice_1/features/home/data/models/skills_model.dart';
import 'package:practice_1/features/home/presentation/view/widgets/about_me.dart';
import 'package:practice_1/features/home/presentation/view/widgets/developer_image.dart';
import 'package:practice_1/features/home/presentation/view/widgets/email_form.dart';
import 'package:practice_1/features/home/presentation/view/widgets/featured_projects.dart';
import 'package:practice_1/features/home/presentation/view/widgets/let_connect.dart';
import 'package:practice_1/features/home/presentation/view/widgets/project_detail_list_view.dart';
import 'package:practice_1/features/home/presentation/view/widgets/skills.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  static List<SkillsModel> items = [
    SkillsModel(icon: Assets.imagesDartIcon, title: 'Dart'),
    SkillsModel(icon: Assets.imagesFlutterIcon, title: 'Flutter'),
    SkillsModel(icon: Assets.imagesFirebase, title: 'Firebase'),
    SkillsModel(icon: Assets.imagesGitIcon, title: 'Git'),
    SkillsModel(icon: Assets.imagesFigmaIcon, title: 'Figma'),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
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
                              style: AppStyles.styleRegular57(context)),
                          TextSpan(
                              text: 'Fatima Hure.',
                              style: AppStyles.styleRegular57(context)),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'A Sydney based front-end developer passionate about building accessible and user friendly websites.',
                      style: AppStyles.styleRegular16(context),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    ContactMe(
                      onPressed: () {
                        getIt<ScrollService>()
                            .scrollTo(getIt<ScrollService>().contactKey);
                      },
                      title: 'CONTACT ME',
                      icon: Assets.imagesWhiteArrowIcon,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const DeveloperImage(height: 400),
                  ],
                ),
              ),
            ],
          ),
        )),
        const SliverToBoxAdapter(
          child: Divider(
            height: 60,
            color: Color(0xff484848),
          ),
        ),
        SliverToBoxAdapter(
          key: getIt<ScrollService>().featuredProjectKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FeaturedProjects(
              title: 'Featured Projects',
              subTitle:
                  'Here are some of the selected projects that showcase my passion for front-end development.',
              titleStyle: AppStyles.styleRegular43(context),
              subTittleStyle: AppStyles.styleRegular18(context),
            ),
          ),
        ),
        const ProjectDetailListView(),
        const SliverToBoxAdapter(
          child: Divider(
            height: 60,
            color: Color(0xff484848),
          ),
        ),
        SliverToBoxAdapter(
          key: getIt<ScrollService>().aboutMeKey,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AboutMe(),
          ),
        ),
        const SliverToBoxAdapter(
          child: Divider(
            height: 60,
            color: Color(0xff484848),
          ),
        ),
        SliverToBoxAdapter(
          key: getIt<ScrollService>().myCapabilitiesKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kMobileHorizintalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MY CAPABILITIES',
                  style: AppStyles.styleRegular43(context),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'I am always looking to add more skills.Morbi egestas neque eu blandit fermentum. Nulla ac lobortis ligula. Pellentesque ac ex at purus faucibus tristique ut et dolor.',
                  style: AppStyles.styleRegular16(context),
                ),
                const SizedBox(
                  height: 24,
                ),
                FittedBox(
                  child: Row(
                      children: List.generate(items.length, (indext) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Skills(
                        skillsModel: items[indext],
                      ),
                    );
                  })),
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Divider(
            height: 60,
            color: Color(0xff484848),
          ),
        ),
        SliverToBoxAdapter(
          key: getIt<ScrollService>().contactKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LetConnect(),
                const SizedBox(
                  height: 64,
                ),
                const EmailForm(),
                const SizedBox(
                  height: 80,
                ),
                Text("© 2025 Made by Fatima Hure",
                    style: AppStyles.styleMedium16(context)),
                const SizedBox(
                  height: 64,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
