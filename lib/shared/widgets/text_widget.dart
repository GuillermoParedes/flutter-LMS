import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {

  String label;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



//
// class TextWidget extends StatefulWidget {
//
//   TextWidget({
//     @required label,
//     size,
//     @required color
//   }): assert(label != null), assert(color != null);
//
//   @override
//   _TextWidgetState createState() => _TextWidgetState();
// }
//
// class _TextWidgetState extends State<TextWidget> {
//   String label;
//   double size = 16;
//   Color color;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: RichText(
//         textAlign: TextAlign.center,
//         text: TextSpan(
//             children: [
//               TextSpan(
//                 text: label,
//                 style: TextStyle(color: Colors.white, fontSize: size),
//               ),
//             ]),
//       ),
//     );
//   }
// }


