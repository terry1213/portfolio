import 'package:get/get.dart';

class ProjectController extends GetxController {
  ProjectController({required this.currentIndex});

  int currentIndex;

  void changeCurrentIndex(int nextIndex) {
    currentIndex = nextIndex;
    update();
  }
}
