import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/features/home/data/models/project_detail_model.dart';
import 'package:practice_1/features/home/presentation/view/widgets/demo_and_github_link.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({super.key, required this.projectDetailModel});
  final ProjectDetailModel projectDetailModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 343,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xff1A1A1A),
                // image: DecorationImage(
                //   image: AssetImage(projectDetailModel.projectImage),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    projectDetailModel.projectImage,
                  ),
                )),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Project Info',
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
        Row(
          children: [
            DemoAndGitHubLink(
              title: projectDetailModel.projectDemoLink,
              icon: Assets.imagesLinkIcon,
            ),
            const SizedBox(
              width: 24,
            ),
            DemoAndGitHubLink(
              title: projectDetailModel.projectDemoLink,
              icon: Assets.imagesGithubIcon,
            ),
          ],
        ),
      ],
    );
  }
}
