import 'package:flutter/material.dart';

class AuthField extends StatefulWidget {
  TextEditingController controller;
  String hintText;
  bool obscureText;
    AuthField({super.key, required this.controller, required this.hintText, this.obscureText=false});

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      
    controller:  widget.controller,
    obscureText: widget.obscureText,
    decoration: InputDecoration(
      hintText: widget.hintText,
      contentPadding: EdgeInsets.all(25)
    ),
    );
  }
}