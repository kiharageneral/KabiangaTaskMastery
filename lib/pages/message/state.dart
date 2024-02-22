import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kabianga_task_mastery/common/entities/entities.dart';

class MessageState {
  RxList<QueryDocumentSnapshot<Msg>> msgList =
      <QueryDocumentSnapshot<Msg>>[].obs;
}
