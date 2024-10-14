import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class EmotionFaces extends StatelessWidget {
  final String emotionFaces;
  const EmotionFaces({
    super.key,
    required this.emotionFaces,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue[400], borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(20),
        child: Center(
            child: Text(
          emotionFaces,
          style: TextStyle(fontSize: 25),
        )));
  }
}
