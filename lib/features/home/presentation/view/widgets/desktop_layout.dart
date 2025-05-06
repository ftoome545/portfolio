import 'package:flutter/material.dart';
import 'package:practice_1/constants.dart';
import 'package:practice_1/core/services/get_it_service.dart';
import 'package:practice_1/core/services/scroll_service.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/core/widgets/contact_me.dart';
import 'package:practice_1/features/home/data/models/skills_model.dart';
import 'package:practice_1/features/home/presentation/view/widgets/brief_info_widget.dart';
import 'package:practice_1/features/home/presentation/view/widgets/contact_section.dart';
import 'package:practice_1/features/home/presentation/view/widgets/featured_projects.dart';
import 'package:practice_1/features/home/presentation/view/widgets/project_detail_list_view.dart';
import 'package:practice_1/features/home/presentation/view/widgets/skills.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
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
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 24),
          child: BriefInfo(),
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
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: FeaturedProjects(
              title: 'Featured Projects',
              subTitle:
                  'Here are some of the selected projects that showcase my passion for front-end development.',
              titleStyle: AppStyles.styleRegular76(context),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'ABOUT ME',
                    style: AppStyles.styleRegular76(context),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FeaturedProjects(
                          titleStyle: AppStyles.styleMedium32(context),
                          subTittleStyle: AppStyles.styleRegular18(context),
                          title:
                              'I am a front-end developer based in Sydney. Has Mechanical Engineering background.',
                          subTitle:
                              "I am a front-end developer based in Sydney looking for exciting opportunities. Has Mechanical Engineering background. Likes to focus on accessibility when developing. Passionate and curious about solving problems. Currently, I’m exploring Reactjs, Webflow and a bit of Designing. While I am not programming, I enjoy playing football, photography and playing Valorant. Learning more to improve skill."),
                      const SizedBox(
                        height: 53,
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
                      //       style: AppStyles.styleBold16(context).copyWith(
                      //         color: AppColors.primaryColor2,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      ContactMe(
                        onPressed: () {},
                        title: 'DOWNLOAD RESUME',
                      ),
                    ],
                  ),
                )
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
            key: getIt<ScrollService>().myCapabilitiesKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDesktopHorizintalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'MY CAPABILITIES',
                      style: AppStyles.styleRegular76(context),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I am always looking to add more skills.Morbi egestas neque eu blandit fermentum. Nulla ac lobortis ligula. Pellentesque ac ex at purus faucibus tristique ut et dolor.',
                          style: AppStyles.styleRegular18(context),
                        ),
                        const SizedBox(
                          height: 32,
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
                  )
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
          key: getIt<ScrollService>().contactKey,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: ContactSection(),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        )
      ],
    );
  }
}
