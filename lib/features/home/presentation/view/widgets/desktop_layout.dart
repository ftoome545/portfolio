import 'package:flutter/material.dart';
import 'package:practice_1/features/home/presentation/view/widgets/brief_info_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 24),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
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
          )),
        ],
      ),
    );
  }
}
