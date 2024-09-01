import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyle {
  static final pacifico400style64 = TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w400,
      color: AppColors.deepBrown,
      fontFamily: 'Pacifico');
  static final Poppins600style28 = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
      fontFamily: 'Poppins');
  static final poppins500sty24 = const TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final poppins400sty12 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.deepBrown,
      fontFamily: 'Poppins');
  static final poppins500sty18 = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
      fontFamily: 'Poppins');
  static final poppins300sty16 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: Colors.black,
      fontFamily: 'Poppins');
}
