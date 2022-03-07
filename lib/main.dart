import 'package:flutter/material.dart';
import 'package:rafay_login_page/screens/home/home_page.dart';
import 'package:rafay_login_page/screens/signup/sign_up_page.dart';
import 'package:rafay_login_page/screens/welcome/welcome_page.dart';

import 'screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login UI',
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
        ),
        debugShowCheckedModeBanner: false,
        // initialRoute: SignUpPage.id,
        routes: {
          "/": (context) => const HomePage(),
          LoginPage.id: (context) => const LoginPage(),
          SignUpPage.id: (context) => const SignUpPage(),
          WelcomePage.id: (context) => const WelcomePage(),
        });
  }
}
