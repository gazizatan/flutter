import 'package:flutter/material.dart';

enum ColorSelection {
  pink(Colors.pink),
  blue(Colors.blue),
  green(Colors.green),
  orange(Colors.orange);

  final Color color;
  const ColorSelection(this.color);
}
