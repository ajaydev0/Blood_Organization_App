// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

Widget Ktext(
    {required text,
    color,
    double? size,
    weight,
    textAlign,
    backgroundColor,
    wordSpacing,
    double? letterSpacing,
    fontStyle}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
        fontStyle: fontStyle,
        color: color,
        fontSize: size,
        fontWeight: weight,
        backgroundColor: backgroundColor,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing),
  );
}
