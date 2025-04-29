import 'package:flutter/material.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects(
      {super.key, required this.titleStyle, required this.subTittleStyle});

  final TextStyle titleStyle;
  final TextStyle subTittleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Featured Projects',
          style: titleStyle,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Here are some of the selected projects that showcase my passion for front-end development.',
          style: subTittleStyle,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
