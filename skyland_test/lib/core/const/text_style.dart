import 'package:flutter/material.dart';
import 'package:skyland_test/core/const/const_colors.dart';

class TextThemeContants {
  static const TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    displaySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorConstants.kBorderGreen),
  );
}
