import 'package:flutter/material.dart';

Widget KtextField({
  onChanged,
  required hintText,
  labelText,
  suffixIcon,
  final String? Function(String?)? validator,
  controller,
  maxLength,
  readOnly = false,
  maxLengthEnforcement,
  obscureText = false,
  autovalidateMode = AutovalidateMode.onUserInteraction,
  border,
  prefixIcon,
  dynamic iconColor,
  suffixIconColor,
}) {
  return TextFormField(
    cursorColor: Colors.red,
    readOnly: readOnly,
    onChanged: onChanged,
    obscureText: obscureText,
    maxLengthEnforcement: maxLengthEnforcement,
    maxLength: maxLength,
    controller: controller,
    validator: validator,
    autovalidateMode: autovalidateMode,
    decoration: InputDecoration(
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(25.0),
      //   borderSide: BorderSide(
      //     color: Colors.red,
      //     width: 2.0,
      //   ),
      // ),
      // enabledBorder: OutlineInputBorder(
      //   borderSide: BorderSide(color: Colors.red),
      // ),

      hintText: hintText,
      labelText: labelText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      suffixIconColor: suffixIconColor,
    ),
  );
}
