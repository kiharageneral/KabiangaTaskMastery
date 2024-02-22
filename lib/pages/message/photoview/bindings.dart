import 'package:get/get.dart';
import 'package:kabianga_task_mastery/pages/message/photoview/index.dart';

class PhotoImageViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotoImageViewController>(() => PhotoImageViewController());
  }
}
