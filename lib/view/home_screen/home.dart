import 'package:flutter/material.dart';
import 'package:sellgo/view/home_screen/widgets/home_widgets.dart';
import 'package:sellgo/widgets/botton_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            HomeWidgets().topwidget(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget().text(data: "Categories"),
                ButtonWidget().textbutton(context: context, text: "See All")
              ],
            ),
            HomeWidgets().categoryAvatarListView(),
          ],
        ),
      ),
    );
  }
}
