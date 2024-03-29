import 'package:flutter/material.dart';
import 'package:sellgo/widgets/navigator_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class ButtonWidget {
  elevatedbutton({text, color, required context, page}) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
        onPressed: () => NavigatorHelper().push(context: context, page: page),
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.only(top: 15, bottom: 15)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)))),
        child: TextWidget().text(data: text, size: size.width * .055));
  }

  textbutton({onpressed, text, pushpage, required context, replacementpage}) {
    final size = MediaQuery.of(context).size;
    return TextButton(
        onPressed: () {
          NavigatorHelper().push(context: context, page: pushpage);
          NavigatorHelper().pushReplacement(
              context: context, replacementPage: replacementpage);
        },
        child: TextWidget()
            .text(data: text, color: Colors.black, size: size.width * .04));
  }
}
