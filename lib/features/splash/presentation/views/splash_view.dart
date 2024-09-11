import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/services/services_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: 'isOnBoardingVisited') ?? false;
    if (isOnBoardingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigate(context, '/signUp')
          : delayedNavigate(context, '/home');
    } else {
      delayedNavigate(context, '/onBoarding');
    }
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

void delayedNavigate(context, path) {
  Future.delayed(Duration(seconds: 2), () {
    customReplacementNavigate(context, path);
  });
}
