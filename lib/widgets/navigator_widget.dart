import 'package:flutter/material.dart';

class NavigatorHelper {
  void push({required BuildContext context, Widget? page}) {
    if (page != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ),
      );
    }
  }

  void pushReplacement(
      {required BuildContext context, Widget? replacementPage}) {
    if (replacementPage != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => replacementPage,
        ),
      );
    }
  }

  void pop({required BuildContext context}) {
    Navigator.pop(context);
  }
}
