import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/widgets/circleavatar_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class HomeWidgets {
  topwidget() {
    return Row(
      children: [
        circleavatar().circleAvatar(radius: 20.0),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: textFormField().searchtextfield(
                preicon: EneftyIcons.search_normal_2_outline, label: "Search")),
        SizedBox(
          width: 10,
        ),
        circleavatar().circleAvatar(
            child: Icon(
          EneftyIcons.notification_outline,
          color: Colors.white,
        )),
      ],
    );
  }

  categoryAvatarListView() {
    return SingleChildScrollView(
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
    );
  }

  productList() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget().text(
                    data: "Product Name",
                    size: 18.0,
                    weight: FontWeight.bold,
                  ),
                  const SizedBox(height: 4),
                  TextWidget().text(
                    data: "Price: ₹100",
                    size: 14.0,
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/dummy image.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Icon(
                            EneftyIcons.star_bold,
                            color: Colors.amber,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
