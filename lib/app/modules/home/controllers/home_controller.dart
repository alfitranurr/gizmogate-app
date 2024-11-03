import 'package:get/get.dart';

class HomeController extends GetxController {
  var sliderIndex = 0.obs;

  void updateSliderIndex(int index) {
    sliderIndex.value = index;
  }
}
