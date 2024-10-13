import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/pages/signup.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
    static route ()=> MaterialPageRoute(builder: (context)=> LoginPage());

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

 
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
 
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
        route ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
    return   Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Form(
        key: formKey,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [const Text('Sign In.',style: TextStyle(color: AppPallete.whiteColor,fontSize: 30,fontWeight: FontWeight.bold),),
           const SizedBox(height: 15,),
         
               AuthField(controller: emailController,hintText: 'Email',),
          const SizedBox(height: 15,),
         
               AuthField(controller: passwordController,hintText: 'Password',obscureText: true,),
          const SizedBox(height: 15,),
         
          AuthGradientButton(title: 'Sign In',onPressed: (){
            formKey.currentState!.validate();
          },),
         
                  const SizedBox(height: 15,),
         
                  GestureDetector(
                    onTap: (){
                                            Navigator.push(context, SignUpPage.route());
                    },
                    child: RichText(text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                      children: [
                        TextSpan(text: ' Sign Up',   style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppPallete.gradient2),)
                      ]
                    ),
                    
                    
                    
                                ),
                  )
          ],
          
          
          ),
       ),
     ),
    );
  }
}