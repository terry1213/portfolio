import 'package:get/get.dart';

class CarouselIndexController extends GetxController {
  int index = 0;

  changeIndex(int nextIndex) {
    index = nextIndex;
    update();
  }
}