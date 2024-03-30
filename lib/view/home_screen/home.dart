import 'package:flutter/material.dart';
import 'package:sellgo/view/home_screen/widgets/home_widgets.dart';
import 'package:sellgo/widgets/botton_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            HomeWidgets().topwidget(context)
          ],
        ),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
        child: Column(
          children: [
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
            HomeWidgets().categoryAvatarListView(context),
            SizedBox(height: 15),
            HomeWidgets().productList(context)
          ],
        ),
      ),
    );
  }
}
