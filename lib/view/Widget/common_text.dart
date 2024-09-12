import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String? text;
  final Color? color;
  final int? maxLine;
  final double? fontSize;
  final FontWeight? fontWeight;
  const CommonText(
      {super.key,
        required this.text,
        this.maxLine,
        this.fontSize,
        this.fontWeight,
        this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
      style: TextStyle(
          fontSize:fontSize?? 9,
          fontWeight:fontWeight?? FontWeight.w600,
          color:color?? Colors.black),
      maxLines:maxLine?? 100,
    );
  }
}
