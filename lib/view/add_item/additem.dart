import 'dart:io';

import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sellgo/theme/colors.dart';
import 'package:sellgo/widgets/botton_widget.dart';
import 'package:sellgo/widgets/text_widget.dart';
import 'package:sellgo/widgets/textfield_widget.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  String? _selectedCategory;
  List<File> _productImages = [];

  final List<String> categories = ['Category A', 'Category B', 'Category C'];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextWidget().text(data: "Add Item", color: colors().black),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget().text(
                  data: "Add Product Images",
                  size: size.width * .0423,
                  weight: FontWeight.bold),
              SizedBox(height: 16),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _productImages.length + 1,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == _productImages.length) {
                          _showImagePicker(context);
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                          image: index < _productImages.length
                              ? DecorationImage(
                                  image: FileImage(_productImages[index]),
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                        child: index == _productImages.length
                            ? Icon(Icons.add, size: 40, color: Colors.grey[600])
                            : null,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24),
              textFormField().textformfield(
                  hinttext: "Product Name", color: Colors.grey.shade200),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedCategory,
                items: categories.map((String category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedCategory = value;
                  });
                },
                decoration: InputDecoration(
                    labelText: 'Category',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.grey.shade200),
              ),
              SizedBox(height: 16),
              textFormField().textformfield(
                  maxline: 3,
                  hinttext: "Product Description",
                  color: Colors.grey.shade200),
              SizedBox(height: 16),
              textFormField().textformfield(
                  hinttext: "Price", color: Colors.grey.shade200),
              SizedBox(height: 10),
              // SizedBox(height: 24),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget().text(
                        data: "Allow Your Location", color: colors().blue),
                    Icon(
                      EneftyIcons.location_bold,
                      size: 15,
                      color: Colors.red,
                    )
                  ],
                ),
              ),

              SizedBox(height: 24),
              Center(
                  child: SizedBox(
                width: size.width * .5,
                child: ButtonWidget().elevatedbutton(
                  context: context,
                  text: "Add Item",
                  color: colors().blue,
                  textcolor: Colors.white,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  void _showImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Take a photo'),
                onTap: () {
                  _getImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text('Choose from gallery'),
                onTap: () {
                  _getImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _productImages.add(File(pickedImage.path));
      });
    }
  }
}
