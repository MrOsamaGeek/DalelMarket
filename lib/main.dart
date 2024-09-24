import 'package:dalel/app/dalel_app.dart';
import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/function/check_state_changes.dart';
import 'package:dalel/core/services/services_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpServicesLocator();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'IzaSyBA3ba1DR8H6t-xJKLARMIiBWwxcZJthMcapiKey',
          appId: "1:540602696954:android:00a98097555b57ace27543",
          messagingSenderId: "540602696954",
          projectId: "dalel-3da92"));
  await getIt<CacheHelper>().init();
  checkStateChanges();
  runApp(const Dalel());
}
