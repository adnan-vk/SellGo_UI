// import 'package:enefty_icons/enefty_icons.dart';
// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         toolbarHeight: 80,
//         title: Text(
//           "Profile",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 25.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Container(
//           width: double.infinity,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 60,
//                 backgroundImage: AssetImage('assets/images/dummy image.jpg'),
//               ),
//               SizedBox(height: 20),
//               _buildUserInfoContainer(),
//               SizedBox(height: 40),
//               _buildFavouritesCard(),
//               SizedBox(height: 20),
//               _buildPaymentsCard(),
//               SizedBox(height: 20),
//               _buildHelpAndSupportCard(),
//               SizedBox(height: 40),
//               TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Sign Out",
//                   style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.red),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildUserInfoContainer() {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.grey[200],
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.3),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'John Doe',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 8),
//           Text(
//             'Email: johndoe@example.com',
//             style: TextStyle(fontSize: 16),
//           ),
//           SizedBox(height: 8),
//           Text(
//             'Phone: +1 234 567 8901',
//             style: TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFavouritesCard() {
//     return CardWidget(
//       icon: EneftyIcons.heart_bold,
//       title: 'Favorites',
//       onTap: () {},
//     );
//   }

//   Widget _buildPaymentsCard() {
//     return CardWidget(
//       icon: EneftyIcons.wallet_3_bold,
//       title: 'Payments',
//       onTap: () {},
//     );
//   }

//   Widget _buildHelpAndSupportCard() {
//     return CardWidget(
//       icon: EneftyIcons.info_circle_bold,
//       title: 'Help and Support',
//       onTap: () {},
//     );
//   }
// }

// class CardWidget extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final VoidCallback onTap;

//   const CardWidget({
//     required this.icon,
//     required this.title,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: Card(
//         elevation: 3,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: ListTile(
//           leading: Icon(icon),
//           title: Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           onTap: onTap,
//           trailing: Icon(EneftyIcons.arrow_right_3_outline),
//         ),
//       ),
//     );
//   }
// }

// // import 'package:enefty_icons/enefty_icons.dart';
// // import 'package:flutter/material.dart';
// // import 'package:sellgo/theme/colors.dart';

// // class Profile extends StatelessWidget {
// //   const Profile({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.transparent,
// //         elevation: 0,
// //         centerTitle: true,
// //         toolbarHeight: 80,
// //         title: Text(
// //           "Profile",
// //           style: TextStyle(
// //             color: Colors.black,
// //             fontSize: 25.0,
// //             fontWeight: FontWeight.bold,
// //           ),
// //         ),
// //       ),
// //       body: SingleChildScrollView(
// //         padding: EdgeInsets.all(16.0),
// //         child: Container(
// //           width: double.infinity,
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               CircleAvatar(
// //                 radius: 60,
// //                 backgroundImage: AssetImage('assets/images/dummy image.jpg'),
// //               ),
// //               SizedBox(height: 20),
// //               _buildUserInfoContainer(),
// //               SizedBox(height: 40),
// //               _buildFavouritesCard(),
// //               SizedBox(height: 20),
// //               _buildPaymentsCard(),
// //               SizedBox(height: 20),
// //               _buildHelpAndSupportCard(),
// //               SizedBox(height: 40),
// //               ElevatedButton(
// //                 onPressed: () {},
// //                 style: ElevatedButton.styleFrom(
// //                   primary: Colors.red,
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                 ),
// //                 child: Padding(
// //                   padding:
// //                       const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
// //                   child: Text(
// //                     "Sign Out",
// //                     style: TextStyle(
// //                       fontSize: 18,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildUserInfoContainer() {
// //     return Container(
// //       width: double.infinity,
// //       padding: EdgeInsets.all(16.0),
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(10),
// //         color: Colors.grey[200],
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.grey.withOpacity(0.3),
// //             spreadRadius: 2,
// //             blurRadius: 5,
// //             offset: Offset(0, 2),
// //           ),
// //         ],
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             'John Doe',
// //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //           ),
// //           SizedBox(height: 8),
// //           Text(
// //             'Email: johndoe@example.com',
// //             style: TextStyle(fontSize: 16),
// //           ),
// //           SizedBox(height: 8),
// //           Text(
// //             'Phone: +1 234 567 8901',
// //             style: TextStyle(fontSize: 16),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildFavouritesCard() {
// //     return CardWidget(
// //       icon: EneftyIcons.heart_bold,
// //       title: 'Favorites',
// //       onTap: () {},
// //     );
// //   }

// //   Widget _buildPaymentsCard() {
// //     return CardWidget(
// //       icon: EneftyIcons.wallet_3_bold,
// //       title: 'Payments',
// //       onTap: () {},
// //     );
// //   }

// //   Widget _buildHelpAndSupportCard() {
// //     return CardWidget(
// //       icon: EneftyIcons.info_circle_bold,
// //       title: 'Help and Support',
// //       onTap: () {},
// //     );
// //   }
// // }

// // class CardWidget extends StatelessWidget {
// //   final IconData icon;
// //   final String title;
// //   final VoidCallback onTap;

// //   const CardWidget({
// //     required this.icon,
// //     required this.title,
// //     required this.onTap,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: double.infinity,
// //       child: Card(
// //         elevation: 3,
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         child: ListTile(
// //           leading: Icon(icon, color: colors().blue),
// //           title: Text(
// //             title,
// //             style: TextStyle(
// //               fontSize: 16,
// //               fontWeight: FontWeight.bold,
// //               color: Colors.black87,
// //             ),
// //           ),
// //           onTap: onTap,
// //           trailing: Icon(
// //             EneftyIcons.arrow_right_3_outline,
// //             color: Colors.black54,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/widgets/text_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100, left: 16, right: 16),
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
                    height: 10,
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
                        Text(
                          'John Doe',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget().text(
                            data: "Favourites",
                            weight: FontWeight.bold,
                            size: 17.0),
                        Icon(EneftyIcons.arrow_right_3_outline)
                      ],
                    ),
                  )
                ])),
      ),
    );
  }
}
