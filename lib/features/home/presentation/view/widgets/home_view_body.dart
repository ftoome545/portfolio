import 'package:flutter/material.dart';
import 'package:practice_1/features/home/presentation/view/widgets/adaptive_layout_widget.dart';
import 'package:practice_1/features/home/presentation/view/widgets/desktop_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
