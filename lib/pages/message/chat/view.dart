import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/pages/message/chat/widgets/chat_list.dart';
import 'index.dart';

class ChatPage extends GetView<ChatController> {
  const ChatPage({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 176, 106, 231),
            Color.fromARGB(255, 166, 112, 231),
            Color.fromARGB(255, 131, 123, 231),
            Color.fromARGB(255, 184, 132, 231),
          ], transform: GradientRotation(90)),
        ),
      ),
      title: Container(
        padding: EdgeInsets.only(top: 0.w, bottom: 0.w, right: 0.w),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0.w, bottom: 0.w, right: 0.w),
              child: InkWell(
                child: SizedBox(
                  width: 44.w,
                  height: 44.w,
                  child: CachedNetworkImage(
                    imageUrl: controller.state.to_avatar.value,
                    imageBuilder: (context, imageProvider) => Container(
                      height: 44.w,
                      width: 44.w,
                      margin: null,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(44.w),
                          ),
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover)),
                    ),
                    errorWidget: (context, url, error) => const Image(
                        image: AssetImage('assets/images/feature-1.png')),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            Container(
              padding: EdgeInsets.only(top: 0.w, bottom: 0.w, right: 0.w),
              width: 100.w,
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    height: 44.w,
                    child: GestureDetector(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.state.to_name.value,
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                            style: TextStyle(
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: AppColors.primaryBackground,
                            ),
                          ),
                          Obx(
                            () => Text(
                              controller.state.to_location.value,
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                                color: AppColors.primaryBackground,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: [
                ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text("Gallery"),
                  onTap: () {
                    controller.imgFromGallery();
                    Get.back();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.photo_camera),
                  title: Text("Camera"),
                  onTap: () {},
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
          child: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: [
            const ChatList(),
            Positioned(
              bottom: 0.h,
              height: 50.h,
              child: Container(
                width: 360.h,
                height: 50.h,
                color: AppColors.primaryBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.w,
                      height: 50.h,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        controller: controller.textController,
                        autofocus: false,
                        focusNode: controller.contentNode,
                        decoration: InputDecoration(
                          hintText: "Send messages....",
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 30.w,
                      margin: EdgeInsets.only(left: 5.w),
                      child: GestureDetector(
                        child: Icon(
                          Icons.photo_outlined,
                          size: 35.w,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          _showPicker(context);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w, top: 5.h),
                      width: 65.w,
                      height: 35.h,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.sendMessage();
                        },
                        child: const Text("Send"),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
