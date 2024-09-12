import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextStyle? textStyle;
  final Color? fillColor;
  final InputDecoration? inputDecoration;
  final OutlineInputBorder? outlineInputBorder;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    this.textStyle,
    this.inputDecoration,
    this.fillColor,
    this.outlineInputBorder,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      style: textStyle ?? const TextStyle(color: Colors.white),
      decoration: inputDecoration ??
          InputDecoration(
              filled: true,
              fillColor: fillColor ?? Colors.black,
              border: outlineInputBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  )),
                 validator: validator,
      /*(value) {
        if (value!.isEmpty) {
          return "Please Enter Your Card Number";
        } else {
          return null;
        }
      },*/
    );
  }
}
