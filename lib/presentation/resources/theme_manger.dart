import 'package:flutter/material.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/styles_manger.dart';

ThemeData getApplicationTheme = ThemeData(
  useMaterial3: true,
  textTheme: TextTheme(
    bodyLarge: getBoldStyle(color: ColorManger.white, fontSize: 20),
    bodyMedium: getMediumStyle(color: ColorManger.white, fontSize: 16),
    bodySmall: getRegularStyle(color: ColorManger.white, fontSize: 12),
    displayLarge: getBoldStyle(color: ColorManger.indigo, fontSize: 20),
    displayMedium: getMediumStyle(color: ColorManger.indigo, fontSize: 16),
    displaySmall: getRegularStyle(color: ColorManger.indigo, fontSize: 12),
    headlineLarge: getBoldStyle(color: ColorManger.grey, fontSize: 20),
    headlineMedium: getMediumStyle(color: ColorManger.grey, fontSize: 16),
    headlineSmall: getRegularStyle(color: ColorManger.grey, fontSize: 12),
    labelLarge: getBoldStyle(color: ColorManger.black, fontSize: 20),
    labelMedium: getMediumStyle(color: ColorManger.black, fontSize: 16),
    labelSmall: getRegularStyle(color: ColorManger.black, fontSize: 12),
    titleLarge: getBoldStyle(color: ColorManger.white60, fontSize: 20),
    titleMedium: getMediumStyle(color: ColorManger.white60, fontSize: 16),
    titleSmall: getRegularStyle(color: ColorManger.white60, fontSize: 12),
  ),
  appBarTheme: const AppBarTheme(
    scrolledUnderElevation: 0,
    color: ColorManger.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: ColorManger.indigo.withOpacity(0.3)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: ColorManger.white95),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: ColorManger.white95),
    ),
    filled: true,
    fillColor: ColorManger.indigo.withOpacity(0.1),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
  ),
  scaffoldBackgroundColor: ColorManger.white,
);

BoxShadow getShadow() {
  return BoxShadow(
    color: ColorManger.black.withOpacity(0.1),
    blurRadius: 24,
    offset: const Offset(0, 4),
  );
}
