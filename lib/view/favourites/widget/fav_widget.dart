import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';

class favWidget {
  Widget buildFavouriteItem() {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(12),
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage('assets/images/dummy image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          "product.name",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '\$100',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            EneftyIcons.heart_bold,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
