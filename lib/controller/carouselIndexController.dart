import 'package:get/get.dart';

class CarouselIndexController extends GetxController {
  int index;

  CarouselIndexController({required this.index});

  changeIndex(int nextIndex) {
    index = nextIndex;
    update();
  }
}