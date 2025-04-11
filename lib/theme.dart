import 'package:flutter/material.dart';

ThemeData lighMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    secondary: const Color.fromARGB(255, 255, 255, 255),
    primary: const Color.fromARGB(255, 0, 0, 0),
    surface: const Color.fromARGB(255, 255, 255, 255),
    shadow: const Color.fromARGB(255, 62, 59, 59),
  )
);

ThemeData darkhMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black54,
    secondary: const Color.fromARGB(255, 40, 39, 39),
    primary: const Color.fromARGB(255, 255, 255, 255),
    surface: const Color.fromARGB(255, 65, 64, 64),
    shadow: const Color.fromARGB(255, 255, 255, 255),
  )
);