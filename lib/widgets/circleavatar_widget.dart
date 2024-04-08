import 'package:flutter/material.dart';
import 'package:sellgo/view/splash/splash.dart';
import 'package:sellgo/widgets/text_widget.dart';

class circleavatar {
  circleAvatar({radius, child, bgcolor, context, page}) {
    return GestureDetector(
      onTap: () {
        NavigatorHelper().push(context: context, page: page);
      },
      child: CircleAvatar(
        radius: radius,
        child: child,
        backgroundColor: bgcolor,
      ),
    );
  }

  categoryavatar({text, child}) {
    return Column(
      children: [
        circleavatar().circleAvatar(child: child, radius: 30.0),
        SizedBox(
          height: 6,
        ),
        SizedBox(
            width: 60,
            child: Center(
              child: TextWidget().text(data: text),
            ))
      ],
    );
  }
}
