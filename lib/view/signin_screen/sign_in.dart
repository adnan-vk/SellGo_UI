import 'package:flutter/material.dart';
import 'package:sellgo/view/signup/sign_up.dart';
import 'package:sellgo/widgets/botton_widget.dart';
import 'package:sellgo/widgets/card_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                height: 100,
              ),
              TextWidget().text(
                  data: "Sign In",
                  size: size.width * .13,
                  weight: FontWeight.bold),
              const SizedBox(
                height: 20,
              ),
              textFormField().textformfield(
                  labeltext: "Email Address", color: Colors.grey.shade200),
              SizedBox(
                height: size.height * .02,
              ),
              textFormField().textformfield(
                  labeltext: "Password", color: Colors.grey.shade200),
              SizedBox(
                height: size.height * .03,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ButtonWidget().elevatedbutton(
                      text: "continue", color: Colors.pink.shade400)),
              Row(
                children: [
                  TextWidget().text(data: "Dont have an Account? "),
                  ButtonWidget().textbutton(
                      text: "Create Account",
                      // page: const SignUp(),
                      pushpage: SignUp(),
                      context: context)
                ],
              ),
              SizedBox(height: size.height * .05),
              CardWidget().card(
                // ontap: () =>,
                url:
                    'https://cdn.iconscout.com/icon/free/png-256/free-google-1772223-1507807.png',
                text: "Continue With Google", context: context,
              ),
              CardWidget().card(
                url: 'https://cdn-icons-png.flaticon.com/512/25/25231.png',
                text: "Continue With GitHub",
                context: context,
              ),
              CardWidget().card(
                url: 'https://cdn-icons-png.freepik.com/256/100/100313.png',
                text: "Continue With OTP",
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
