import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/features/home/data/models/project_detail_model.dart';
import 'package:practice_1/features/home/presentation/view/widgets/featured_project_desktop.dart';
import 'package:practice_1/features/home/presentation/view/widgets/project_detail.dart';

// ignore: must_be_immutable
class ProjectDetailListView extends StatelessWidget {
  const ProjectDetailListView({super.key});

  static List<ProjectDetailModel> items = [
    ProjectDetailModel(
        projectImage: Assets.imagesBankDetails,
        projectTitle: 'Banking program',
        projectDescription:
            'Mastered CSS Grid complexities in building an innovative news homepage, navigating intricate design decisions for a seamless user experience. Leveraged the challenge to enhance skills in  front-end development.',
        projectYear: '2024',
        projectRole: 'Front-end Developer',
        projectDemoLink: 'LIVE DEMO Link',
        projectGitHubLink: 'GITHUB Link'),
    ProjectDetailModel(
        projectImage: Assets.imagesTravelDetails,
        projectTitle: 'Travel app',
        projectDescription:
            'Mastered CSS Grid complexities in building an innovative news homepage, navigating intricate design decisions for a seamless user experience. Leveraged the challenge to enhance skills in  front-end development.',
        projectYear: '2024',
        projectRole: 'Flutter Developer',
        projectDemoLink: 'LIVE DEMO Link',
        projectGitHubLink: 'GITHUB Link'),
    ProjectDetailModel(
        projectImage: Assets.imagesCardDetails,
        projectTitle: 'CV app',
        projectDescription:
            'Mastered CSS Grid complexities in building an innovative news homepage, navigating intricate design decisions for a seamless user experience. Leveraged the challenge to enhance skills in  front-end development.',
        projectYear: '2024',
        projectRole: 'Flutter Developer',
        projectDemoLink: 'LIVE DEMO Link',
        projectGitHubLink: 'GITHUB Link'),
  ];

  double heightAndWidth(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < 800) {
      return 16;
    } else {
      return 40;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: heightAndWidth(context),
                vertical: heightAndWidth(context)),
            child: MediaQuery.sizeOf(context).width < 800
                ? ProjectDetail(
                    projectDetailModel: items[index],
                  )
                : FeaturedProjectDesktop(projectDetailModel: items[index]),
          );
        },
        childCount: items.length,
      ),
    );
  }
}
