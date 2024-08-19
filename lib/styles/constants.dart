import 'package:flutter/material.dart';

class PaddingStyles {
  static const EdgeInsets pageContainerPadding = EdgeInsets.all(16);
  static const EdgeInsets widgetPadding = EdgeInsets.only(top: 5, bottom: 5);

  static const EdgeInsets inputDecorationPadding = EdgeInsets.all(10);
}

class TextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
  );
}

class ColorStyles {
  static const Color inputDecorationColor = Color.fromARGB(255, 37, 37, 37);
}

class RoundingStyles {
  static BorderRadiusGeometry containerRounding = BorderRadius.circular(10);
}