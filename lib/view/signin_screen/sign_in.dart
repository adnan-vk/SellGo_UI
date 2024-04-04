import 'package:flutter/material.dart';
import 'package:sellgo/theme/colors.dart';
import 'package:sellgo/view/bottom_bar/bottombar.dart';
import 'package:sellgo/view/signin_screen/widgets/signin_widgets.dart';
import 'package:sellgo/view/signup/sign_up.dart';
import 'package:sellgo/widgets/botton_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              TextWidget().text(
                  data: "Sign in",
                  size: size.width * .1,
                  weight: FontWeight.bold),
              const SizedBox(
                height: 20,
              ),
              signinWidgets().textfields(context),
              SizedBox(
                height: size.height * .03,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ButtonWidget().elevatedbutton(
                      context: context,
                      page: BottomBar(),
                      text: "continue",
                      textcolor: Colors.white,
                      color: colors().blue)),
              SizedBox(
                height: size.height * .01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextWidget().text(
                      data: "Dont have an Account? ",
                      color: Colors.grey,
                      size: size.width * .025),
                  ButtonWidget().textbutton(
                      weight: FontWeight.bold,
                      text: "Create Account",
                      pushpage: SignUp(),
                      context: context)
                ],
              ),
              SizedBox(height: size.height * .07),
              signinWidgets().cardwidget(context)
            ],
          ),
        ),
      ),
    );
  }
}
