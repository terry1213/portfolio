import 'package:flutter/material.dart';

class ProjectPageController extends ChangeNotifier {
  ProjectPageController({required this.currentIndex});

  int currentIndex;

  void changeCurrentIndex(int nextIndex) {
    currentIndex = nextIndex;
    notifyListeners();
  }
}
