import 'package:kabianga_task_mastery/pages/dashboard/index.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/pages/message/controller.dart';
import 'package:kabianga_task_mastery/pages/profile/controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<MessageController>(() => MessageController());
  }
}
