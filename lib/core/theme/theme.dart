import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme{

  static  _border ([Color color=AppPallete.borderColor ]) => OutlineInputBorder(
      borderSide: BorderSide(color: color,width: 3),
      borderRadius: BorderRadius.circular(10)    );
  static final darkThemeMode = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: AppPallete.backgroundColor, iconTheme: IconThemeData(color: Colors.white)),
    scaffoldBackgroundColor: AppPallete.backgroundColor, inputDecorationTheme: InputDecorationTheme(
    enabledBorder: _border() ,
errorBorder: _border(Colors.red),
disabledBorder: _border(),
    focusedBorder:  _border(AppPallete.gradient2),
     focusedErrorBorder: _border(Colors.red)
  ));
}