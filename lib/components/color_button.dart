import 'package:flutter/material.dart';
import '../constants.dart'; // Import the ColorSelection enum

class ColorButton extends StatelessWidget {
  final void Function(int) changeColor;
  final ColorSelection colorSelected;

  const ColorButton({
    super.key,
    required this.changeColor,
    required this.colorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: ColorSelection.values.indexOf(colorSelected),
      onChanged: (value) {
        if (value != null) changeColor(value);
      },
      items:
          ColorSelection.values.map((color) {
            return DropdownMenuItem<int>(
              value: ColorSelection.values.indexOf(color),
              child: Text(color.name),
            );
          }).toList(),
    );
  }
}
