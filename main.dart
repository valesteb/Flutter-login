import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
}

class Login_SignupApp extends StatelessWidget {
  const Login_SignupApp({super.key});

  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      honme: AuthScreen(),
    );
  }
}
