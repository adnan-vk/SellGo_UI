import 'package:flutter/material.dart';
import 'package:sellgo/view/signin_screen/sign_in.dart';
// import 'package:sellgo/view/signin_screen/sign_in.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignIn(),
            )),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
