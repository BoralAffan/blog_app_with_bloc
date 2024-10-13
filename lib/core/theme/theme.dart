import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static final darkThemeMode = ThemeData.dark().copyWith(scaffoldBackgroundColor: AppPallete.backgroundColor, inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppPallete.borderColor,width: 3)
    ) ,

    focusedBorder:  OutlineInputBorder(
      borderSide: BorderSide(color: AppPallete.gradient2,width: 3)
    ) ,
  ));
}