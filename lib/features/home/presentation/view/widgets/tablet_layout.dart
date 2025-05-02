import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/features/home/presentation/view/widgets/brief_info_widget.dart';
import 'package:practice_1/features/home/presentation/view/widgets/contact_section.dart';
import 'package:practice_1/features/home/presentation/view/widgets/featured_projects.dart';
import 'package:practice_1/features/home/presentation/view/widgets/project_detail_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

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
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: AppColors.primaryColor2,
                            width: 2.0,
                          ))),
                          child: Text(
                            'MORE ABOUT ME',
                            style: AppStyles.styleBold16(context).copyWith(
                              color: AppColors.primaryColor2,
                            ),
                          ),
                        ),
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
        const SliverToBoxAdapter(
          child: Padding(
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
