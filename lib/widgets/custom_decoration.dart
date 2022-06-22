
import 'package:flutter/material.dart';

import '../base/constants/app_colors.dart';
import '../base/constants/app_styles.dart';

InputDecoration getCommonTextFieldDecoration(String hint) {
  return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 4,horizontal: 0),
      fillColor: white,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none
      ),
      errorMaxLines: 2,
      isDense: true,
      hintText: hint,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: const TextStyle(
          fontSize: 18,
          color: BLACK,
          fontFamily: fontFamily),
      hintStyle: const TextStyle(
          fontSize: 20,
          color: hintGrey,
          fontWeight: FontWeight.w500,
          fontFamily: fontFamily),
      errorStyle: const TextStyle(
        fontFamily: fontFamily,
        color: RED,
        fontSize: 0,
      ));
}
