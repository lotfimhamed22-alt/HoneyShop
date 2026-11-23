import 'package:flutter/material.dart';

class TextSharedWidget extends StatelessWidget {
  const TextSharedWidget({
    super.key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.color,
  });
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      // textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
