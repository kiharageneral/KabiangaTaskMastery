import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTaskController extends GetxController {
  final startTime = TimeOfDay.now().obs;
  final endTime = TimeOfDay.now().obs;

  void setStartTime(TimeOfDay newTime) => startTime.value = newTime;
  void setEndTime(TimeOfDay newTime) => endTime.value = newTime;

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
