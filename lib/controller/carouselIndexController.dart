import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class CarouselIndexController extends GetxController {
  final CarouselController carouselController = CarouselController();
  int currentIndex;

  CarouselIndexController({required this.currentIndex});

  changeCurrentIndex(int nextIndex) {
    currentIndex = nextIndex;
    update();
  }
}