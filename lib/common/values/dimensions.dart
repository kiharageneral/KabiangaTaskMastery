import 'package:get/get.dart';

class Dimensions {
  // width 411.42857142857144
  // height 731.4285714285714
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

//width
  static double width400 = screenWidth / 1.028571429;
  static double width300 = screenWidth / 1.371428571;
  static double width50 = screenWidth / 8.228571429;
  static double width20 = screenWidth / 20.57142857;
  static double width5 = screenWidth / 82.28571429;
  static double width10 = screenWidth / 41.14285714;
  static double width295 = screenWidth / 1.394673123;

// height
  static double height80 = screenHeight / 9.142857143;
  static double height50 = screenHeight / 14.62857143;
  static double height20 = screenHeight / 36.57142857;
  static double height10 = screenHeight / 52.24489796;
  static double height5 = screenHeight / 146.2857143;

  // font size
  static double fontSize16 = screenHeight / 45.71428571;
  static double fontSize24 = screenHeight / 30.47619048;
  static double fontSize14 = screenHeight / 30.47619048;
  static double fontSize20 = screenHeight / 36.57142857;

  // radius
  static double radius20 = screenHeight / 36.57142857;
  static double radius40 = screenHeight / 18.28571429;
  static double radius50 = screenHeight / 14.62857143;
}
