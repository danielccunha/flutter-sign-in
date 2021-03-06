import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sign_in/styles/app_colors.dart';

abstract class AppTheme {
  static ThemeData create(BuildContext context) {
    final theme = ThemeData.light();

    return ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: AppColors.background,
      primaryColor: AppColors.primary,
      buttonTheme: theme.buttonTheme.copyWith(
        height: 56.0,
      ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        filled: true,
        fillColor: const Color(0xFFF0F0F8),
        border: const OutlineInputBorder(),
        enabledBorder: InputBorder.none,
      ),
      textTheme: theme.textTheme.copyWith(
        bodyText1: const TextStyle(color: AppColors.text),
        subtitle1: const TextStyle(color: AppColors.text),
      ),
    );
  }
}
