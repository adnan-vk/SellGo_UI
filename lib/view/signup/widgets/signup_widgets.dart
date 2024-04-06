import 'package:flutter/material.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class signupWidget {
  textfields({required context}) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        textFormField().textformfield(
            hinttext: "First Name", color: Colors.grey.shade200),
        SizedBox(
          height: size.height * .02,
        ),
        textFormField()
            .textformfield(hinttext: "Last Name", color: Colors.grey.shade200),
        SizedBox(
          height: size.height * .02,
        ),
        textFormField().textformfield(
            hinttext: "Email Address", color: Colors.grey.shade200),
        SizedBox(
          height: size.height * .02,
        ),
        textFormField()
            .textformfield(hinttext: "Password", color: Colors.grey.shade200),
        SizedBox(
          height: size.height * .02,
        ),
        textFormField().textformfield(
            hinttext: "Confirm Password", color: Colors.grey.shade200),
      ],
    );
  }
}
