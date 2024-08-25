import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_boarding/presentation/views/widget/custom_smooth_page.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              // Image.asset(Assets.imagesOnBoarding1),
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.imagesOnBoarding1),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: _controller),
              const SizedBox(height: 32),
              Text(
                'Explore The history withDalel in a smart way',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.poppins500sty24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Using our app’s history libraries you can find many historical periods',
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
