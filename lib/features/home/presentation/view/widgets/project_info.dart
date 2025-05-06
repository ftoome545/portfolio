import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/features/home/data/models/project_detail_model.dart';
import 'package:practice_1/features/home/presentation/view/widgets/demo_and_github_link.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    super.key,
    required this.projectDetailModel,
  });

  final ProjectDetailModel projectDetailModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectDetailModel.projectTitle,
              style: AppStyles.styleMedium24(context),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              projectDetailModel.projectDescription,
              style: AppStyles.styleRegular16(context),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'PROJECT INFO',
              style: AppStyles.styleSemibold16(context),
            ),
            const Divider(
              height: 32,
              color: Color(0xff484848),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Year',
                  style: AppStyles.styleMedium16(context),
                ),
                Text(projectDetailModel.projectYear,
                    style: AppStyles.styleMedium16(context)),
              ],
            ),
            const Divider(
              height: 32,
              color: Color(0xff484848),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Role',
                  style: AppStyles.styleMedium16(context),
                ),
                Text(projectDetailModel.projectRole,
                    style: AppStyles.styleMedium16(context)),
              ],
            ),
            const Divider(
              height: 32,
              color: Color(0xff484848),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        FittedBox(
          child: Row(
            children: [
              projectDetailModel.projectDemoLink != ''
                  ? DemoAndGitHubLink(
                      title: 'LIVE DEMO',
                      icon: Assets.imagesLinkIcon,
                      onTap: () {
                        var liveDemoLink = projectDetailModel.projectDemoLink;
                        print(liveDemoLink);
                      },
                    )
                  : const SizedBox(),
              const SizedBox(
                width: 24,
              ),
              projectDetailModel.projectGitHubLink != ''
                  ? DemoAndGitHubLink(
                      title: 'SEE ON GITHUB',
                      icon: Assets.imagesGithubIcon,
                      onTap: () {
                        var gitHubLink = projectDetailModel.projectGitHubLink;
                        print(gitHubLink);
                      },
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
