import 'package:flutter/material.dart';
import 'package:sellgo/widgets/text_widget.dart';

class HelpSupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget().text(data: "Help & Support"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget()
                .text(data: "Contact Us:", size: 20.0, weight: FontWeight.bold),
            SizedBox(height: 10),
            TextWidget().text(data: "Email: support@sellgo.com", size: 16.0),
            TextWidget().text(data: "Phone: +1 (XXX) XXX-XXXX", size: 16.0),
            SizedBox(height: 20),
            TextWidget()
                .text(data: "FAQs:", size: 20.0, weight: FontWeight.bold),
            SizedBox(height: 10),
            TextWidget().text(
                data: "1. How do I sell a product on Sellgo?", size: 16.0),
            TextWidget()
                .text(data: "2. How do I buy a product on Sellgo?", size: 16.0),
          ],
        ),
      ),
    );
  }
}
