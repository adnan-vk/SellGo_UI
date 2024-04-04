import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/widgets/text_widget.dart';

class ProfileWidget {
  container({text}) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget().text(data: text, size: 17.0),
          Icon(EneftyIcons.arrow_right_3_outline)
        ],
      ),
    );
  }
}
