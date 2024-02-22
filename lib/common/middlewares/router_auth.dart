import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/routes/routes.dart';
import 'package:kabianga_task_mastery/common/store/store.dart';

import 'package:get/get.dart';

/// Check if the user has logged in
class RouteAuthMiddleware extends GetMiddleware {
  // priority smaller the better
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin ||
        route == AppRoutes.SIGN_IN ||
        //route == AppRoutes.Message ||
        route == AppRoutes.INITIAL) {
      return null;
    } else {
      Future.delayed(const Duration(seconds: 2),
          () => Get.snackbar("Tips", "Login expired, please login again!"));
      return const RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}
