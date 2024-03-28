import 'package:flutter/material.dart';
import 'package:sellgo/widgets/botton_widget.dart';
import 'package:sellgo/widgets/circleavatar_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   leading: circleavatar().circleAvatar(radius: 20.0),
      //   title: textFormField().textformfield(), // Add the text field for search in the app bar
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         // Implement your favorites functionality here
      //         // For example, you can show a snackbar
      //         ScaffoldMessenger.of(context).showSnackBar(
      //           SnackBar(content: Text('Favorites tapped')),
      //         );
      //       },
      //       icon: Icon(Icons.favorite),
      //     ),
      //   ],
      // ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                circleavatar().circleAvatar(radius: 20.0),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: textFormField().searchtextfield(
                        preicon: Icons.search, label: "Search...")),
                SizedBox(
                  width: 10,
                ),
                circleavatar().circleAvatar(
                    child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                )),
              ],
            ),
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
            SingleChildScrollView(
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
            )
          ],
        ),
      ),
    );
  }
}
