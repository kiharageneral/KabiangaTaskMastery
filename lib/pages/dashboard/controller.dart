import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/routes/routes.dart';
import 'package:kabianga_task_mastery/common/values/colors.dart';
import 'package:kabianga_task_mastery/pages/dashboard/index.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  DashboardController();

  final state = DashboardState();
  late final List<String> tabTitles;
  late final PageController pageController;
  late final List<BottomNavigationBarItem> bottomTabs;

  void handlePageChanged(int index) {
    state.page = index;
  }

  void handleNavBarTap(int index) {
    pageController.jumpToPage(index);
  }

  @override
  void onInit() {
    super.onInit();
    tabTitles = ["Home", "Task","Messages", "Profile"];
    bottomTabs = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.apps,
          color: AppColors.thirdElementText,
        ),
        activeIcon: Icon(
          Icons.apps,
          color: AppColors.secondaryElementText,
        ),
        label: 'Home',
        backgroundColor: AppColors.primaryBackground,
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.note_sharp,
          color: AppColors.thirdElementText,
        ),
        activeIcon: Icon(
          Icons.note_sharp,
          color: AppColors.secondaryElementText,
        ),
        label: 'Tasks',
        backgroundColor: AppColors.primaryBackground,
      ),
        const BottomNavigationBarItem(
        icon: Icon(
          Icons.message,
          color: AppColors.thirdElementText,
        ),
        activeIcon: Icon(
          Icons.message,
          color: AppColors.secondaryElementText,
        ),
        label: 'Messages',
        backgroundColor: AppColors.primaryBackground,
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
          color: AppColors.thirdElementText,
        ),
        activeIcon: Icon(
          Icons.person,
          color: AppColors.secondaryElementText,
        ),
        label: 'person',
        backgroundColor: AppColors.primaryBackground,
      ),
    ];
    pageController = PageController(initialPage: state.page);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
