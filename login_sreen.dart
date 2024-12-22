import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom-field.dart';
import 'package:flutter_application_1/custom_button.dart';

class LoginScreen extends StatelessWidget {
  final VoidCallback onSignUpTap;
  const LoginScreen({super.key, Key? key, required this.onSignUpTap, required void Function() onLoginTap}) super(key = key);
  


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff8f9fd),
      body: SafeArea(child: SileChildScrollView(
      child: Padding(padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            FadeInDown(
              Duration(microseconds: 500),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(value),
                    decoration: BoxDecoration(
                      color: ,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("Welcome again :D",
                    style: TextStyle(
                      color: ,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Log in to your \naccount",
                    style: TextStyle(
                      color: Color(oxff4a154b),
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      fontSize: 36,
                    ),
                  )
                ],
              ),
            ), //fadeInDown
            SizedBox(
                    height: 10,
                  ),
            FadeInUp(
              Duration(milliseconds: 600),
              child: Column(
                children: [
                  CustomTextField(
                   icon: CupertinoIcons.mail,
                   hint: "Email",
                   gradientColors: [
                    Color(0xff4a154b),
                    Color(0xff6b1a6b),
                    ],
                    
                   ),
                    SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                   icon: CupertinoIcons.lock,
                   hint: "Password",
                   isPassword: true,
                   gradientColors: [
                    Color(0xff4a154b),
                    Color(0xff6b1a6b),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeInUp(
                    duration: Duration(milliseconds: 500),
                    delay: Duration(milliseconds: 400),
                    child: CustomButton(onPressed: (){}, text: "Log in"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeIn(
                    duration: Duration(milliseconds: 500),
                    delay: Duration(milliseconds: 400),
                    child: Row(children: [
                      Text("Don't have an account?",
                      style: TextStyle(color: Color(0xff1d1c1d)),
                      ),
                      GestureDetector(
                        onTap:onSignUpTap,
                        child:  Text("Sign up",
                        style: TextStyle(color:
                         Color(0xff4a154b),
                         fontWeight: FontWeight.bold,
                        ),
                        ),
                        ),
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FadeInUp(
                    duration: Duration(milliseconds: 500),
                    delay: Duration(milliseconds: 400),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: Container(height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.transparent,
                                Color(0xffe0e0e0),
                              ],
                              ),
                            ),
                            ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text("Or continue with", style:TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            ),
                            Expanded(child: child),
                          ],
                        ),
                        SizedBox(
                    height: 30,
                    ),
                    
                      ],
                    )
                  ),
                ],
              )
            )      
          ],
        ),
      ),
      ),
      ),
    );
  }
}