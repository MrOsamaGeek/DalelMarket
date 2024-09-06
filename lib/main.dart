import 'package:dalel/app/dalel_app.dart';
import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/function/check_state_changes.dart';
import 'package:dalel/core/services/services_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp;
  setUpServicesLocator();
  await getIt<CacheHelper>().init();
  checkStateChanges();

  runApp(const Dalel());
}
