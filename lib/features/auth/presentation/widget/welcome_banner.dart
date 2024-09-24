import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class welcomeBanner extends StatelessWidget {
  const welcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(AppStrings.appName,
              style: CustomTextStyle.saira700sty32.copyWith(fontSize: 60)),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // SvgPicture.asset(Assets.imagesVector),
              // SvgPicture.asset(Assets.imagesVector1),
              Image.asset(
                'assets/images/Vector-1.png',
                height: 100,
              ),
              Image.asset(
                'assets/images/Vector.png',
                height: 100,
              )
            ],
          )
        ],
      ),
    );
  }
}
