import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/widgets/text_widget.dart';

class favWidget {
  favList(context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage('assets/images/dummy image.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget().text(
                          data: "\$100",
                          size: size.width * .046,
                          weight: FontWeight.bold),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          EneftyIcons.heart_bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  TextWidget().text(
                      data: "Product Name",
                      size: size.width * .035,
                      color: Colors.grey),
                  SizedBox(height: size.height * .005),
                  TextWidget().text(
                      data: 'kakkanjery, malapppuram',
                      size: size.width * .028,
                      color: Colors.grey,
                      weight: FontWeight.bold),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
