import 'package:flutter/material.dart';
import 'package:sellgo/widgets/botton_widget.dart';
import 'package:sellgo/widgets/card_widget.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class signinWidgets {
  textfields(context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        textFormField().textformfield(
            labeltext: "Email Address", color: Colors.grey.shade200),
        SizedBox(
          height: size.height * .02,
        ),
        textFormField().textformfield(
            labeltext: "Password", color: Colors.grey.shade200, obsc: true),
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ButtonWidget().textbutton(
              context: context,
              text: "Forgot Password?",
              weight: FontWeight.bold),
        )
      ],
    );
  }

  cardwidget(context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        CardWidget().card(
          url:
              'https://cdn.iconscout.com/icon/free/png-256/free-google-1772223-1507807.png',
          text: "Continue With Google",
          context: context,
        ),
        SizedBox(
          height: size.height * .022,
        ),
        CardWidget().card(
          url: 'https://cdn-icons-png.freepik.com/256/100/100313.png',
          text: "Continue With OTP",
          context: context,
        )
      ],
    );
  }
}
