import 'package:flutter/material.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class signupWidget {
  textfields({required context}) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        textFormField().textformfield(
            labeltext: "First Name", color: Colors.grey.shade200),
        SizedBox(
          height: size.height * .02,
        ),
        textFormField()
            .textformfield(labeltext: "Last Name", color: Colors.grey.shade200),
        SizedBox(
          height: size.height * .02,
        ),
        textFormField().textformfield(
            labeltext: "Email Address", color: Colors.grey.shade200),
        SizedBox(
          height: size.height * .02,
        ),
        textFormField()
            .textformfield(labeltext: "Password", color: Colors.grey.shade200),
        SizedBox(
          height: size.height * .02,
        ),
        textFormField().textformfield(
            labeltext: "Confirm Password", color: Colors.grey.shade200),
      ],
    );
  }
}
