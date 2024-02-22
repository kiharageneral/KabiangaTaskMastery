import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:kabianga_task_mastery/common/values/colors.dart';
import 'package:kabianga_task_mastery/pages/dashboard/widgets/dashboard_widget_page.dart';
import 'package:kabianga_task_mastery/pages/message/view.dart';
import 'package:kabianga_task_mastery/pages/profile/view.dart';
import 'package:kabianga_task_mastery/pages/task/task_pages/task_page.dart';

import 'index.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  Widget _buildPageView() {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller.pageController,
      onPageChanged: controller.handlePageChanged,
      children: const [
        DashboardWidgetPage(),
        TaskPage(),
        MessagePage(),
        ProfilePage()
      ],
    );
  }

  Widget _bottomNavigationBar() {
    return Obx(() => BottomNavigationBar(
          items: controller.bottomTabs,
          currentIndex: controller.state.page,
          type: BottomNavigationBarType.fixed,
          onTap: controller.handleNavBarTap,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: AppColors.tabBarElement,
          selectedItemColor: AppColors.thirdElementText,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageView(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
