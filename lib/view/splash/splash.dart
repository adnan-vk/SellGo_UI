// import 'package:flutter/material.dart';
// import 'package:sellgo/view/signin_screen/sign_in.dart';
// import 'package:sellgo/widgets/navigator_widget.dart';

// class Splash extends StatelessWidget {
//   const Splash({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pink,
//       body: GestureDetector(
//         onTap: () => navigator()
//             .pushreplacement(context: context, replacementpage: SignIn()),
//         // Navigator.push(
//         //     context,
//         //     MaterialPageRoute(
//         //       builder: (context) => const SignIn(),
//         //     )),
//         child: Center(
//           child: Image.asset(
//             'assets/images/logo.png',
//             height: double.infinity,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:sellgo/view/signin_screen/sign_in.dart';
import 'package:sellgo/widgets/navigator_widget.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: GestureDetector(
        onTap: () => NavigatorHelper().pushReplacement(
          context: context,
          replacementPage: SignIn(),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}

class NavigatorHelper {
  void push({required BuildContext context, required Widget page}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void pushReplacement({required BuildContext context, required Widget replacementPage}) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => replacementPage,
      ),
    );
  }

  void pop({required BuildContext context}) {
    Navigator.pop(context);
  }
}
