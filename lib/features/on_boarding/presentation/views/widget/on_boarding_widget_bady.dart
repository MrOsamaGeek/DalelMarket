import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/views/widget/custom_smooth_page.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final  Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(onBoardingData[index].imagePath),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: controller),
              const SizedBox(height: 32),
              Text(
                onBoardingData[index].titel,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.poppins500sty24
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                onBoardingData[index].subTitel,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.poppins300sty16,
                textAlign: TextAlign.center,
              )
            ],
          );
        },
      ),
    );
  }
}
