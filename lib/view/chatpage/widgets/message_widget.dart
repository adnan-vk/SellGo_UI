// import 'package:flutter/material.dart';
// import 'package:sellgo/theme/colors.dart';
// import 'package:sellgo/view/chatpage/chat.dart';
// import 'package:sellgo/widgets/text_widget.dart';

// class MessageWidget {
//   Message({messageType, message, context}) {
//     final size = MediaQuery.of(context).size;
//     return Align(
//       alignment: messageType == MessageType.Sent
//           ? Alignment.centerLeft
//           : Alignment.centerRight,
//       child: Container(
//           margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//           padding: const EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             color: messageType == MessageType.Sent
//                 ? Colors.grey[300]
//                 : colors().blue,
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: TextWidget().text(
//               data: "Message",
//               size: size.width * .04,
//               color: messageType == MessageType.Sent
//                   ? Colors.black
//                   : Colors.white)),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:sellgo/widgets/text_widget.dart';

enum MessageType {
  Sent,
  Received,
}

class MessageWidget extends StatelessWidget {
  final String message;
  final MessageType messageType;

  const MessageWidget({
    Key? key,
    required this.message,
    required this.messageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: messageType == MessageType.Sent
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
              messageType == MessageType.Sent ? Colors.grey[200] : Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextWidget().text(
          data: message,
          size: size.width * .04,
          color: messageType == MessageType.Sent ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
