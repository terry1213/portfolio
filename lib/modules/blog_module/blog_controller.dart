import 'package:get/get.dart';

class BlogController extends GetxController {
  BlogController({required this.currentIndex});

  int currentIndex;

  void changeCurrentIndex(int nextIndex) {
    currentIndex = nextIndex;
    update();
  }
}
