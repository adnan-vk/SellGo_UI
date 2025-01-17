// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class textFormField {
  textformfield(
      {controller,
      hinttext,
      onchange,
      validator,
      String? type,
      keytype,
      max,
      minline,
      color,
      maxline,
      bool obsc = false}) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter $hinttext";
        } else if (type == "Email") {
          if (!EmailValidator.validate(value)) {
            return "Please enter a valid email address";
          }
        } else if (type == 'Password') {
          if (value.length < 6) {
            return 'Password should be at least 6 characters';
          }
        } else if (type == 'Confirm Password') {
          if (value != controller) {
            return 'Passwords do not match';
          }
        } else if (type == 'OTP') {
          if (value.length != 6) {
            return "OTP must contains 6 characters";
          }
        } else if (type == 'phone') {
          if (value.length != 13) {
            return "Please Enter Valid Phone Number";
          }
        }
        return null;
      },
      obscureText: obsc,
      maxLines: maxline,
      minLines: minline,
      maxLength: max,
      keyboardType: keytype,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide.none),
        hintText: hinttext,
        labelStyle: TextStyle(color: Colors.black),
        filled: true,
        fillColor: color,
      ),
      onChanged: (value) {
        onchange;
      },
    );
  }

  searchtextfield({String? label, preicon}) {
    return TextFormField(
      style: TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
          prefixIcon: Icon(
            preicon,
            color: Colors.black,
          ),
          hintText: label,
          hintStyle: TextStyle(color: Colors.black),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50),
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 234, 233, 233)),
    );
  }
}
