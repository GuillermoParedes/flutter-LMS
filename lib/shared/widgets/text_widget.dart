import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {

  final String label;
  final Color color;
  final String position;
  final double size;
  TextWidget({Key key, @required this.label, @required this.color, this.position = 'center', this.size = 16}): super(key:key);

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            children: [
              TextSpan(
                text: widget.label,
                style: TextStyle(color: widget.color, fontSize: widget.size),
              ),
            ]),
        textAlign: TextAlign.center,
      );
  }
}
