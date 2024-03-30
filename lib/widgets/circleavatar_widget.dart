import 'package:flutter/material.dart';
import 'package:sellgo/theme/colors.dart';
import 'package:sellgo/widgets/text_widget.dart';

class circleavatar {
  circleAvatar({radius, child}) {
    return CircleAvatar(
      radius: radius,
      child: child,
      backgroundColor: colors().blue,
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
