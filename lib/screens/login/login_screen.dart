import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'login_widgets/custom_input_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Lottie.asset(
              "assets/31938-welcome.json",
              repeat: true,
              height: 250,
            ),
            const SizedBox(height: 30),
            CustomInputFields(
              controller: _usernameController,
              text: "Username",
            ),
            CustomInputFields(
              controller: _passwordController,
              text: "Password",
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: GoogleFonts.lora().fontFamily,
                ),
              ),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  fixedSize: MaterialStateProperty.all(
                    const Size(120, 45),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.amber)),
            ),
          ],
        ),
      ),
    );
  }
}
