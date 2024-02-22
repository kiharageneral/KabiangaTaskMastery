import 'package:kabianga_task_mastery/common/routes/routes.dart';
import 'package:kabianga_task_mastery/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "Kabianga TaskMaster .";
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
        const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Dashboard));
  }
}
