import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class customNavBar extends StatelessWidget {
  const customNavBar({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          AppStrings.skip,
          style: CustomTextStyle.poppins300sty16
              .copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
