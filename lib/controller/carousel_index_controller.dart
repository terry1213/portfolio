import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class CarouselIndexController extends GetxController {
  CarouselIndexController({required this.currentIndex});

  final CarouselController carouselController = CarouselController();
  int currentIndex;

  void changeCurrentIndex(int nextIndex) {
    currentIndex = nextIndex;
    update();
  }
}
