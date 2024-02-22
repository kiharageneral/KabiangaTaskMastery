import 'package:get/get.dart';
import 'package:kabianga_task_mastery/pages/settings/controller.dart';

import 'index.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
