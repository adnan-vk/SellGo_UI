import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 80,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/dummy image.jpg'),
            ),
            SizedBox(height: 20),
            _buildUserInfoContainer(),
            SizedBox(height: 40),
            _buildListTiles(),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: Text(
                'Sign Out',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfoContainer() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'John Doe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Email: johndoe@example.com',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'Phone: +1 234 567 8901',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildListTiles() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.favorite, color: Colors.red),
          title: Text(
            'Favorites',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.payment, color: Colors.blue),
          title: Text(
            'Payments',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.help, color: Colors.green),
          title: Text(
            'Help and Support',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
