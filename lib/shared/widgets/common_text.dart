import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;
  final Color? textColor;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final bool? softWrap;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final TextBaseline? textBaseline;
  final double? height;
  const CommonText(
      {super.key,
      required this.data,
      this.textAlign,
      this.textColor,
      this.fontSize,
      this.fontStyle,
      this.fontWeight,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.decoration,
      this.textBaseline,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      softWrap: softWrap,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.fade,
      style: TextStyle(
        height: height ?? 1.2,
        color: textColor,
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        decoration: decoration,
        textBaseline: textBaseline,
      ),
    );
  }
}