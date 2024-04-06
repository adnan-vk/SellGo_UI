import 'package:flutter/material.dart';
import 'package:sellgo/widgets/navigator_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class ButtonWidget {
  elevatedbutton({text, color, required context, page, textcolor}) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
        onPressed: () => NavigatorHelper().push(context: context, page: page),
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.only(top: 10, bottom: 10)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)))),
        child: TextWidget().text(
          data: text,
          size: size.width * .055,
          color: textcolor,
        ));
  }

  textbutton(
      {onpressed, text, pushpage, required context, replacementpage, weight}) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        NavigatorHelper().push(context: context, page: pushpage);
      },
      child: TextWidget().text(
          data: text,
          color: Colors.black,
          size: size.width * .025,
          weight: weight),
    );
  }

  iconbutton({onpressed, icon}) {
    return IconButton(
        onPressed: () {
          onpressed;
        },
        icon: icon);
  }
}
