import 'package:flutter/material.dart';

Text Ktext({
  required text,
  final color,
  final double? size,
  final weight,
  final textAlign,
  final backgroundColor,
  final wordSpacing,
  final double? letterSpacing,
  fontStyle,
}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        color: color,
        fontSize: size,
        fontWeight: weight,
        backgroundColor: backgroundColor,
        wordSpacing: wordSpacing),
  );
}
