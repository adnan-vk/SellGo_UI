import 'package:flutter/material.dart';
import 'package:sellgo/theme/colors.dart';
import 'package:sellgo/view/favourites/widget/fav_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: TextWidget().text(data: "Favourites", color: colors().black),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return favWidget().buildFavouriteItem();
        },
      ),
    );
  }
}
