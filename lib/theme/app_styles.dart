import 'package:flutter/material.dart';
import 'package:laramarket/common/utils/app_colors.dart';

class AppTheme {
  static ThemeData appThemeData = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    primarySwatch: Colors.purple,
    //App Bar THEME
    appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: AppColors.primaryText,
        )),
  );
}
