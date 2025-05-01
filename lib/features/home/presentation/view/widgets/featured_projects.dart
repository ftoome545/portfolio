import 'package:flutter/material.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects(
      {super.key,
      required this.titleStyle,
      required this.subTittleStyle,
      required this.title,
      required this.subTitle});
  final String title;
  final String subTitle;
  final TextStyle titleStyle;
  final TextStyle subTittleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          subTitle,
          style: subTittleStyle,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
