import 'package:flutter/material.dart';
import 'package:app_001/image_changer.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});
  GradientContainer.purple({super.key})
      : colors = [Colors.deepOrange, Colors.deepPurple];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: beginAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: const ImageChanger(),
    );
  }
}
