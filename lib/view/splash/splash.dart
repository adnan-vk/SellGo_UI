import 'package:flutter/material.dart';
import 'package:sellgo/view/signin_screen/sign_in.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: colors().blue,
      body: GestureDetector(
        onTap: () => NavigatorHelper().pushReplacement(
          context: context,
          replacementPage: SignIn(),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo blue.png',
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}

class NavigatorHelper {
  push({required BuildContext context, required Widget page}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void pushReplacement(
      {required BuildContext context, required Widget replacementPage}) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => replacementPage,
      ),
    );
  }

  pop({required BuildContext context}) {
    Navigator.pop(context);
  }
}
