import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_1/core/utils/app_images.dart';

class SocialContact extends StatelessWidget {
  const SocialContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.imagesLinkedInIcon)),
          const SizedBox(
            width: 24,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.imagesGithubIcon)),
          const SizedBox(
            width: 24,
          ),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(Assets.imagesXIcon)),
          const SizedBox(
            width: 24,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.imagesInstagramIcon)),
        ],
      ),
    );
  }
}
