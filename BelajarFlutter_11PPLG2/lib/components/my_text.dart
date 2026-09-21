import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const MyText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize ?? 16.0,
        fontWeight: fontWeight ?? FontWeight.normal, 
        color: color ?? Colors.black87, 
      ),
    );
  }
}