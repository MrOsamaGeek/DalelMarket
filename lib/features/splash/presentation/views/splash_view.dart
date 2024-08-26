import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Text(
            AppStrings.appName,
            style: CustomTextStyle.pacifico400style64,
          )),
    );
  }
}

void delayedNavigate(context) {
  Future.delayed(Duration(seconds: 2), () {
    customReplacementNavigate(context, '/onBoarding');
  });
}
