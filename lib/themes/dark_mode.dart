import 'package:flutter/material.dart';

ThemeData darkmode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: const Color.fromARGB(255, 20, 20, 20), // Dark background
    primary: const Color.fromARGB(255, 122, 122, 122), // Primary app bar color
    secondary: const Color.fromARGB(255, 30, 30, 30), // Card or accent areas
    inversePrimary: Colors.grey.shade300, // Text color on primary backgrounds
    onSurface: Colors.white, // Text color on background
    onPrimary: Colors.white, // Text color on AppBar or primary surfaces
    onSecondary: Colors.grey.shade300, // Text on secondary color surfaces
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 20), // Overall app background
);
