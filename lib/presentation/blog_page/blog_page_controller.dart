import 'package:flutter/material.dart';

class BlogPageController extends ChangeNotifier {
  BlogPageController({required this.currentIndex});

  int currentIndex;

  void changeCurrentIndex(int nextIndex) {
    currentIndex = nextIndex;
    notifyListeners();
  }
}
