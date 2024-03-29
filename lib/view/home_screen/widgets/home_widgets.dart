import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/widgets/circleavatar_widget.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class HomeWidgets {
  topwidget() {
    return Row(
      children: [
        circleavatar().circleAvatar(radius: 20.0),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: textFormField().searchtextfield(
                preicon: EneftyIcons.search_normal_2_outline, label: "Search")),
        SizedBox(
          width: 10,
        ),
        circleavatar().circleAvatar(
            child: Icon(
          EneftyIcons.notification_outline,
          color: Colors.white,
        )),
      ],
    );
  }

  categoryAvatarListView() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          circleavatar().categoryavatar(
            text: "hello",
          ),
          SizedBox(
            width: 15,
          ),
          circleavatar().categoryavatar(
            text: "hello",
          ),
          SizedBox(
            width: 15,
          ),
          circleavatar().categoryavatar(
            text: "hello",
          ),
          SizedBox(
            width: 15,
          ),
          circleavatar().categoryavatar(
            text: "hello",
          ),
          SizedBox(
            width: 15,
          ),
          circleavatar().categoryavatar(
            text: "hello",
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
