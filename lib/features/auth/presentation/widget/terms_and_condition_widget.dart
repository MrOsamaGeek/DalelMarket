import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presentation/widget/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndConditionWidget  extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: AppStrings.iHaveAgreeToOur,
              style: CustomTextStyle.poppins400sty12),
          TextSpan(
              text: AppStrings.termsAndCondition,
              style: CustomTextStyle.poppins400sty12
                  .copyWith(decoration: TextDecoration.underline)),
        ]))
      ],
    );
  }
}
