import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_styles.dart';
import 'package:practice_1/core/widgets/custom_text_form_field.dart';

class EmailForm extends StatefulWidget {
  const EmailForm({
    super.key,
  });

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String name, email, subject, message;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name", style: AppStyles.styleMedium16(context)),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              onSaved: (value) {
                name = value!;
              },
              hintText: 'Full name*',
              textInputType: TextInputType.text),
          const SizedBox(
            height: 24,
          ),
          Text("Email", style: AppStyles.styleMedium16(context)),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              onSaved: (value) {
                email = value!;
              },
              hintText: 'Email address*',
              textInputType: TextInputType.emailAddress),
          const SizedBox(
            height: 24,
          ),
          Text("Subject", style: AppStyles.styleMedium16(context)),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              onSaved: (value) {
                subject = value!;
              },
              hintText: 'Email subject*',
              textInputType: TextInputType.text),
          const SizedBox(
            height: 24,
          ),
          Text("Message", style: AppStyles.styleMedium16(context)),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              onSaved: (value) {
                message = value!;
              },
              maxLines: 5,
              hintText: 'Your message*',
              textInputType: TextInputType.text),
          const SizedBox(
            height: 40,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFFD3E97A),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 19),
              child: Text(
                'CONTACT ME',
                style: AppStyles.styleBold16(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
