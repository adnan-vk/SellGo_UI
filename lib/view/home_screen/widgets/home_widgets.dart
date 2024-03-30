import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/widgets/circleavatar_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class HomeWidgets {
  topwidget(context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        circleavatar().circleAvatar(radius: 20.0),
        SizedBox(
          width: size.width * .02,
        ),
        Expanded(
            child: textFormField().searchtextfield(
                preicon: EneftyIcons.search_normal_2_outline, label: "Search")),
        SizedBox(
          width: size.width * .02,
        ),
        circleavatar().circleAvatar(
            child: Icon(
          EneftyIcons.notification_outline,
          color: Colors.white,
        )),
      ],
    );
  }

  categoryAvatarListView(context) {
    final size = MediaQuery.of(context).size;
    final List<String> categories = [
      'hello',
      'hello',
      'hello',
      'hello',
      'hello'
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length * 2 - 1, (index) {
          if (index.isEven) {
            int categoryIndex = index ~/ 2;
            return Column(
              children: [
                circleavatar().categoryavatar(text: categories[categoryIndex])
              ],
            );
          } else {
            return SizedBox(
              width: size.width * .03,
            );
          }
        }),
      ),
    );
  }

  productList(context) {
    final size = MediaQuery.of(context).size;
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
          return GestureDetector(
            onTap: () {},
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/dummy image.jpg'),
                              fit: BoxFit.cover)),
                    )),
                    SizedBox(
                      height: size.height * .005,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * .26,
                          child: TextWidget().text(
                            data: "₹100",
                            size: size.width * .055,
                            weight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            EneftyIcons.heart_outline,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    TextWidget().text(
                      data: "Product Name",
                      size: size.width * .035,
                    ),
                    SizedBox(height: size.height * .005),
                    TextWidget().text(
                        data: 'kakkanjery, malapppuram',
                        size: size.width * .028,
                        color: Colors.grey,
                        weight: FontWeight.bold),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
