import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/core/utils/size_config.dart';
import 'package:practice_1/core/widgets/build_app_bar.dart';
import 'package:practice_1/core/widgets/build_mobile_app_bar.dart';
import 'package:practice_1/features/home/presentation/view/widgets/custom_drawer.dart';
import 'package:practice_1/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? buildMobileAppBar(context)
          : buildAppBar(context),
      backgroundColor: AppColors.primaryColor,
      endDrawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      body: const HomeViewBody(),
    );
  }
}
