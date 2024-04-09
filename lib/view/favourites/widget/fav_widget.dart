import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';

class favWidget {
  Widget buildFavouriteItem() {
    return Container(
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: Container(
                width: 80,
                height: 80,
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
          ),
          Divider(
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }
}
