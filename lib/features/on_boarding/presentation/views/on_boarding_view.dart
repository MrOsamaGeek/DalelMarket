import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/on_boarding/presentation/views/widget/custom_nav_bar.dart';
import 'package:dalel/features/on_boarding/presentation/views/widget/on_boarding_widget_bady.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 40),
            customNavBar(),
            OnBoardingWidgetBody(),
            CustomBtn(text: AppStrings.next),
            SizedBox(height: 17)
          ],
        ),
      ),
    ));
  }
}
