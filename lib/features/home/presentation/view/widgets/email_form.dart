import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/core/widgets/custom_text_form_field.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name", style: AppStyles.styleMedium16(context)),
        const SizedBox(
          height: 8,
        ),
        const CustomTextFormField(
            hintText: 'John Doe', textInputType: TextInputType.text),
        const SizedBox(
          height: 24,
        ),
        Text("Email", style: AppStyles.styleMedium16(context)),
        const SizedBox(
          height: 8,
        ),
        const CustomTextFormField(
            hintText: '', textInputType: TextInputType.emailAddress),
        const SizedBox(
          height: 24,
        ),
        Text("Subject", style: AppStyles.styleMedium16(context)),
        const SizedBox(
          height: 8,
        ),
        const CustomTextFormField(
            hintText: '', textInputType: TextInputType.text),
        const SizedBox(
          height: 24,
        ),
        Text("Message", style: AppStyles.styleMedium16(context)),
        const SizedBox(
          height: 8,
        ),
        const CustomTextFormField(
            maxLines: 5, hintText: '', textInputType: TextInputType.text),
        const SizedBox(
          height: 40,
        ),
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
      ],
    );
  }
}
