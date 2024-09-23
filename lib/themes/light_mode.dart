import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300, // Light background
    primary: Colors.grey.shade500, // Primary app bar color
    secondary: Colors.grey.shade100, // Card or accent areas
    inversePrimary: Colors.grey.shade700, // Text color on primary backgrounds
    onSurface: Colors.black, // Text color on background
    onPrimary: Colors.black, // Text color on AppBar or primary surfaces
    onSecondary: Colors.black, // Text on secondary color surfaces
  ),
  scaffoldBackgroundColor: Colors.grey.shade300, // Overall app background
);
