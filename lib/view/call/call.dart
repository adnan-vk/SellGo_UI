import 'package:flutter/material.dart';
import 'package:sellgo/widgets/circleavatar_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class CallingPage extends StatelessWidget {
  const CallingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget().text(data: "Connecting..."),
            SizedBox(
              height: size.height * .03,
            ),
            circleavatar().circleAvatar(context: context, radius: 100.0),
            SizedBox(height: size.height * .03),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * .07),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.speaker)),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call_end),
                    color: Colors.white,
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
