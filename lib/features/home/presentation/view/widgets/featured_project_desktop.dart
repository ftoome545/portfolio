import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/features/home/data/models/project_detail_model.dart';
import 'package:practice_1/features/home/presentation/view/widgets/project_info.dart';

class FeaturedProjectDesktop extends StatelessWidget {
  const FeaturedProjectDesktop({super.key, required this.projectDetailModel});
  final ProjectDetailModel projectDetailModel;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    Assets.imagesBankDetails,
                  ),
                )),
          ],
        ),
        const SizedBox(
          width: 48,
        ),
        ProjectInfo(projectDetailModel: projectDetailModel),
      ],
    );
  }
}
