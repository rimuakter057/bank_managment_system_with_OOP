import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String text;
  final Icon? icon;
  final Color? color;
  final Color? backgroundColor;
  final double? fontSize;
  final BorderRadius? borderRadius;
  final ButtonStyle? style;



  final VoidCallback? callback;
  const CommonButton(
      {super.key,
        required this.text,
        this.color,
        this.fontSize,
        this.callback,
        this.borderRadius,
        this.icon, this.height, this.width, this.backgroundColor, this.style});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(

      height:height?? size.height * .07,
      width:width?? size.width,
      child: ElevatedButton(
        onPressed: () {
          callback!();
        },
        style:style?? ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.deepPurple,
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius?? BorderRadius.circular(25),
            side: const BorderSide(color: Colors.grey, width: 1),
          ),
        ),
        child: icon != null
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            const SizedBox(
              width: 10,
            ),
            Text(
              text.toString(),
              style: TextStyle(
                color: color ?? Colors.white,
                fontSize: fontSize ?? 14,
              ),
            ),
          ],
        )
            : Center(
          child: Text(
            text.toString(),
            style: TextStyle(
              color: color ?? Colors.white,
              fontSize: fontSize ?? 30,
            ),
          ),
        ),
      ),
    );
  }
}