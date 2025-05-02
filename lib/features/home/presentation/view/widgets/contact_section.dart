import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/features/home/presentation/view/widgets/email_form.dart';
import 'package:practice_1/features/home/presentation/view/widgets/let_connect.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: LetConnect(),
            ),
            Expanded(
              child: EmailForm(),
            )
          ],
        ),
        const SizedBox(
          height: 80,
        ),
        Text("© 2025 Made by Fatima Hure",
            style: AppStyles.styleMedium16(context)),
      ],
    );
  }
}
