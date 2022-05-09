import 'package:flutter/material.dart';
import 'package:sliverapp/presentation/color_management.dart';

ThemeData whiteTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManagement.greyColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManagement.yellowColor,
      actionsIconTheme: IconThemeData(
        color: Colors.black,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}
