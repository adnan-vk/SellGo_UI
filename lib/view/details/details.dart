import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/theme/colors.dart';
import 'package:sellgo/view/call/call.dart';
import 'package:sellgo/view/chatpage/chat.dart';
import 'package:sellgo/view/location/location.dart';
import 'package:sellgo/widgets/botton_widget.dart';
import 'package:sellgo/widgets/circleavatar_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            SizedBox(
              child: Image(
                image: AssetImage('assets/images/dummy image.jpg'),
                width: double.infinity,
              ),
            ),
            Positioned(
                top: size.height * .28,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget().text(data: "PRODUCT NAME"),
                    TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.grey),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey[200])),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductLocationPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Location",
                        style: TextStyle(
                          color: Colors.red,
                          // fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: size.height * .33,
                child: TextWidget().text(data: "Other Details")),
            Positioned(
              bottom: size.height * .04,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * .65,
                    child: ButtonWidget().elevatedbutton(
                        color: Colors.grey[300],
                        context: context,
                        text: "Proceed to Payment",
                        textcolor: colors().black),
                  ),
                  SizedBox(
                    width: size.width * .02,
                  ),
                  circleavatar().circleAvatar(
                      context: context,
                      page: ChatPage(),
                      bgcolor: colors().blue,
                      child: Icon(
                        EneftyIcons.message_2_outline,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: size.width * .02,
                  ),
                  circleavatar().circleAvatar(
                      context: context,
                      page: CallingPage(),
                      bgcolor: Colors.green,
                      child: Icon(
                        EneftyIcons.call_calling_outline,
                        color: Colors.white,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
