import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSubtitle extends StatelessWidget {
  const ForgotPasswordSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Text(
        'Enter your registered email below to receivepassword reset instruction',
        style: CustomTextStyle.poppins400sty12.copyWith(fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}