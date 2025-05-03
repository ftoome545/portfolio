import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false,
    this.maxLines = 1,
  });
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is rquired.';
        } else {
          return null;
        }
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintStyle: AppStyles.styleBold16(context)
              .copyWith(color: const Color(0xFFFFFFFF)),
          hintText: hintText,
          filled: true,
          fillColor: const Color(0xFF1A1A1A),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          width: 1,
          color: Color(0xFF484848),
        ));
  }
}
