import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    required this.color
  });

  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize:fontSize,color:color ),);
  }
}
