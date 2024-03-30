import 'package:flutter/material.dart';
import 'package:sellgo/view/favourites/widget/fav_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextWidget().text(data: "My Favourites", color: Colors.black),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.75,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return favWidget().favList(context);
        },
      ),
    );
  }
}
