import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
     body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Text('Sign Up.',style: TextStyle(color: AppPallete.whiteColor,fontSize: 30,fontWeight: FontWeight.bold),),
      
      AuthField(controller: nameController,hintText: 'Name',),
      SizedBox(height: 15,),

           AuthField(controller: emailController,hintText: 'Email',),
      SizedBox(height: 15,),

           AuthField(controller: passwordController,hintText: 'Password',obscureText: true,),
      SizedBox(height: 15,),
      ],
      
      
      ),
    );
  }
}