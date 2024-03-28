import 'package:flutter/material.dart';
import 'package:sellgo/widgets/navigator_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class ButtonWidget {
  elevatedbutton({text, color, required context, page}) {
    return ElevatedButton(
      onPressed: () => NavigatorHelper().push(context: context, page: page),
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          padding: const MaterialStatePropertyAll(
              EdgeInsets.only(top: 15, bottom: 15)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
      child: Text(text, style: const TextStyle(fontSize: 20)),
    );
  }

  textbutton({onpressed, text, pushpage, required context, replacementpage}) {
    return TextButton(
        onPressed: () {
          NavigatorHelper().push(context: context, page: pushpage);
          NavigatorHelper().pushReplacement(
              context: context, replacementPage: replacementpage);
        },
        child: TextWidget().text(data: text, color: Colors.blue));
  }
}
