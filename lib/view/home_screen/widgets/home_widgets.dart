import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/theme/colors.dart';
import 'package:sellgo/view/details/details.dart';
import 'package:sellgo/view/notification/notification.dart';
import 'package:sellgo/widgets/circleavatar_widget.dart';
import 'package:sellgo/widgets/navigator_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class HomeWidgets {
  topwidget(context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        circleavatar().circleAvatar(radius: 20.0, bgcolor: colors().blue),
        SizedBox(
          width: size.width * .02,
        ),
        Expanded(
            child: textFormField().searchtextfield(
                preicon: EneftyIcons.search_normal_2_outline, label: "Search")),
        SizedBox(
          width: size.width * .02,
        ),
        GestureDetector(
          onTap: () => NavigatorHelper()
              .push(context: context, page: NotificationScreen()),
          child: circleavatar().circleAvatar(
              bgcolor: colors().blue,
              child: Icon(
                EneftyIcons.notification_outline,
                color: Colors.white,
              )),
        )
      ],
    );
  }

  categoryAvatarListView(context) {
    final size = MediaQuery.of(context).size;
    final List<String> catorgoryName = [
      'Mobile',
      'Laptop And Computers',
      'Accessories',
      // 'Headphones',
      // 'Camera',
      // 'Speaker',
    ];
    final List<String> catorgoryItems = [
      'https://m.media-amazon.com/images/G/31/img23/CEPC/BAU/ELP/navtiles/Tablets._CB574550011_.png',
      'https://m.media-amazon.com/images/G/31/img23/CEPC/BAU/ELP/navtiles/Gaming-laptops._CB574550011_.png',
      'https://m.media-amazon.com/images/G/31/img23/CEPC/BAU/ELP/navtiles/Computer-Accessories._CB574550011_.png',
      // 'https://toppng.com/uploads/preview/carhood-car-range-group-of-cars-115629462067gxhtsihda.png'
      // 'https://m.media-amazon.com/images/G/31/img23/CEPC/BAU/ELP/navtiles/Headphones._CB574550011_.png',
      // 'https://m.media-amazon.com/images/G/31/img23/CEPC/BAU/ELP/navtiles/Cameras._CB574550011_.png',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(catorgoryName.length * 2 - 1, (index) {
          if (index.isEven) {
            int categoryIndex = index ~/ 2;
            return Column(
              children: [
                circleavatar().categoryavatar(
                    text: catorgoryName[categoryIndex],
                    child: Image(
                        image: NetworkImage(catorgoryItems[categoryIndex])))
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
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(),
                )),
            child: Container(
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
                  )),
                  SizedBox(
                    height: size.height * .005,
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
