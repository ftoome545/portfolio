import 'package:flutter/material.dart';
import 'package:practice_1/core/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: [
              CustomAppBar(),
            ],
          )),
        ],
      ),
    );
  }
}
