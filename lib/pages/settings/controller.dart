import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kabianga_task_mastery/common/store/store.dart';

class SettingController extends GetxController {
    Future<void> goLogOut() async {
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }
}