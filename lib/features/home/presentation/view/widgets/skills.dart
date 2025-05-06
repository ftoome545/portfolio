import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/features/home/data/models/skills_model.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
    required this.skillsModel,
  });
  final SkillsModel skillsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: const BorderSide(color: Color(0xff484848), width: 1.0)),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          SvgPicture.asset(skillsModel.icon),
          const SizedBox(
            width: 16,
          ),
          Text(
            skillsModel.title,
            style: MediaQuery.sizeOf(context).width < 800
                ? AppStyles.styleBold14(context).copyWith(
                    color: Colors.white,
                  )
                : AppStyles.styleBold16(context).copyWith(
                    color: Colors.white,
                  ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
