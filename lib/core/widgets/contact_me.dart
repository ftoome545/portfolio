import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_1/core/utils/app_images.dart';
import 'package:practice_1/core/utils/app_styles.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFFD3E97A),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 19),
            child: Text(
              'CONTACT ME',
              style: AppStyles.styleBold16(context),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 54,
            height: 54,
            decoration: ShapeDecoration(
              color: const Color(0xFF222222),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Center(child: SvgPicture.asset(Assets.imagesLinkedInIcon)),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 54,
            height: 54,
            decoration: ShapeDecoration(
              color: const Color(0xFF222222),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Center(child: SvgPicture.asset(Assets.imagesGithubIcon)),
          ),
        ),
      ],
    );
  }
}
