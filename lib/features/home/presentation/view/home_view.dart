import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_colors.dart';
import 'package:practice_1/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'homeView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
