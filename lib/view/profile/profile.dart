import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/view/profile/widgets/profile_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              ProfileWidget().logout(context);
            },
            icon: Icon(EneftyIcons.logout_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Container(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        AssetImage('assets/images/dummy image.jpg'),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget().text(
                            data: "John Doe",
                            size: size.width * .06,
                            weight: FontWeight.bold),
                        SizedBox(height: size.height * .015),
                        TextWidget().text(
                          data: "Email: johndoe@example.com",
                          size: size.width * .04,
                        ),
                        SizedBox(height: size.height * .015),
                        TextWidget().text(
                          data: "Phone: +1 234 567 8901",
                          size: size.width * .042,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  ProfileWidget().container(text: "Favourites"),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  ProfileWidget().container(text: "Payments"),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  ProfileWidget().container(text: "Help and support"),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  TextWidget().text(data: "v 1.0.1", size: size.width * .03)
                ])),
      ),
    );
  }
}
