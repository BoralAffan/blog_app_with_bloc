import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  String title;
    void Function()? onPressed;
    AuthGradientButton({super.key, required this.title,required  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
          AppPallete.gradient1
, AppPallete.gradient2        ])
      ),
      child: ElevatedButton(
        child: Text(title,style: TextStyle(color: Colors.white),),
        onPressed: onPressed,
      style: ElevatedButton.styleFrom(fixedSize: Size(390, 50), shadowColor: AppPallete.transparentColor, backgroundColor: AppPallete.transparentColor),
      ),
    );
  }
}