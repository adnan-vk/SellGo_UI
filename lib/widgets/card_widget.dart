import 'package:flutter/material.dart';
import 'package:sellgo/widgets/text_widget.dart';

class CardWidget {
  card({url, text, VoidCallback? ontap,required context}) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        width: size.width*1,
        height: size.height*.1,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SizedBox(
                    // width: size.width*.065,
                    height: size.height*.03,
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                 SizedBox(width: size.width*.05),
                Expanded(
                  child: TextWidget().text(
                    data: text,
                    size: size.height*.02,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
