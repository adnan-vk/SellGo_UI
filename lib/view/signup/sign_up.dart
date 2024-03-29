import 'package:flutter/material.dart';
import 'package:sellgo/theme/colors.dart';
import 'package:sellgo/view/signin_screen/sign_in.dart';
import 'package:sellgo/view/signup/widgets/signup_widgets.dart';
import 'package:sellgo/widgets/botton_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              IconButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              TextWidget().text(
                  data: "Create an Account",
                  size: size.width * .1,
                  weight: FontWeight.bold),
              const SizedBox(
                height: 20,
              ),
              signupWidget().textfields(context: context),
              SizedBox(
                height: size.height * .03,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ButtonWidget().elevatedbutton(
                      context: context,
                      text: "continue",
                      color: colors().blue)),
              Row(
                children: [
                  TextWidget().text(
                      data: "Already have an Account?", color: Colors.grey),
                  ButtonWidget().textbutton(
                      text: "Login",
                      context: context,
                      replacementpage: SignIn())
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
