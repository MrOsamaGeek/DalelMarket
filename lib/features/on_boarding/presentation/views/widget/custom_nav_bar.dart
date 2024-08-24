 import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

Align customNavBar() {
    return Align(
          alignment: Alignment.bottomRight,
          child: Text(
            AppStrings.skip,
            style: CustomTextStyle.poppins300sty16
                .copyWith(fontWeight: FontWeight.w400),
          ),
        );
  }