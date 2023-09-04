import 'package:fish_game/resources/resources.dart';
import 'package:flutter/material.dart';

class AppStyles {
  const AppStyles._();

  static const TextStyle mainStyle = TextStyle(
    color: AppColors.beige,
    fontWeight: AppFonts.bold,
    fontSize: 24.0,
    fontFamily: AppFonts.fontFamily,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle buttonStyle = TextStyle(
    color: AppColors.blue,
    fontFamily: AppFonts.fontFamily,
    fontSize: 18.0,
    fontWeight: AppFonts.normal,
    fontStyle: FontStyle.normal,
  );
}