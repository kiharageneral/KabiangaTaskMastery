import 'package:get/get.dart';

class AddScreenController extends GetxController {
  var board = [
    'URGENT',
    'RUNNING',
    'ONGOING',
  ];

  var teamMembers = [
    'assets/images/background.jpg'
  ];

  var selectedIndex = 0;
  void setIndex(int index) {
    selectedIndex = index;
    update();
  }
}
