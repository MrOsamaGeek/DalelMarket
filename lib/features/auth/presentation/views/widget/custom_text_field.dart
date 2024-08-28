import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});

  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24),
      child: TextField(
          decoration: InputDecoration(
        labelText: labelText,
        labelStyle: CustomTextStyle.poppins500sty18,
        border: getBorderStyle(),
        enabledBorder: getBorderStyle(),
        focusedBorder: getBorderStyle(),
      )),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: Colors.grey));
}
