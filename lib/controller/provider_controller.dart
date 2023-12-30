import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  int index = 0;
  List<Color> colors = [
    Colors.greenAccent,
    Colors.amber,
    Colors.purple,
    Colors.limeAccent,
    Colors.blueAccent
  ];

  void color() {
    index = (index + 1) % colors.length;
    notifyListeners();
  }
}
