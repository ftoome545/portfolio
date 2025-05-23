import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/app_images.dart';

class DeveloperImage extends StatelessWidget {
  final double height;
  const DeveloperImage({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.secondryColor,
            // image: const DecorationImage(
            //   image: NetworkImage("https://placehold.co/600x663"),
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              Assets.imagesProfileImage,
              fit: BoxFit.fill,
            )),
      ],
    );
  }
}
