import 'package:flutter/material.dart';
import 'package:sellgo/widgets/text_widget.dart';

class ButtonWidget {
  elevatedbutton({pressed, text, color}) {
    return ElevatedButton(
      onPressed: () => pressed,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          padding: const MaterialStatePropertyAll(
              EdgeInsets.only(top: 15, bottom: 15)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
      child: Text(text, style: const TextStyle(fontSize: 20)),
    );
  }

  textbutton({onpressed, text, page, required context}) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ));
        },
        child: TextWidget().text(data: text, color: Colors.blue));
  }
}
