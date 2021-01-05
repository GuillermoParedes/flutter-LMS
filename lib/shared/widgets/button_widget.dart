import 'package:flutter/material.dart';
import 'package:flutter_lms/shared/style/theme.dart';

class ButtonWidget extends StatelessWidget {

  final String label;
  Color textColor;
  Color bgColor;
  ButtonWidget({ @required this.label = '', this.textColor = Colors.white, @required this.bgColor }): assert(label != null), assert(textColor != null), assert(bgColor != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        color: bgColor
        ),
      child: Text(
        label,
        style: TextStyle(fontSize: 16, color: textColor),
      ),
    );
  }
}


