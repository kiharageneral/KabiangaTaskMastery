import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/entities/entities.dart';

class ContactState {
  var count = 0.obs;
  RxList<UserData> contactList = <UserData>[].obs;
}
