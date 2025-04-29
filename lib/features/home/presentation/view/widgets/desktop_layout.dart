import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/features/home/presentation/view/widgets/brief_info_widget.dart';
import 'package:practice_1/features/home/presentation/view/widgets/featured_projects.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 24),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              BriefInfo(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        )),
        const SliverToBoxAdapter(
          child: Divider(
            height: 60,
            color: Color(0xff484848),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: FeaturedProjects(
              titleStyle: AppStyles.styleRegular76(context),
              subTittleStyle: AppStyles.styleRegular18(context),
            ),
          ),
        ),
        // const SliverToBoxAdapter(child: FeaturedProjectDesktop()),
      ],
    );
  }
}
