import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rafay_login_page/screens/login/login_screen.dart';
import 'package:rafay_login_page/screens/signup/sign_up_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.indigo,
              Colors.purple,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: 400,
                child: Lottie.asset(
                  "assets/welcome-onboard.json",
                ),
              ),
              const SizedBox(height: 40),
              MyButton(title: 'Log In', route: LoginPage.id),
              const SizedBox(height: 20),
              MyButton(title: 'Register', size: 200, route: SignUpPage.id),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.title,
    this.size = 150,
    required this.route,
  }) : super(key: key);
  final String title;
  final double size;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        height: 50,
        width: size,
        child: Center(
          child: Text(
            title,
            // textAligns: TextAlign.center,
            style: TextStyle(
              fontFamily: GoogleFonts.aBeeZee().fontFamily,
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
