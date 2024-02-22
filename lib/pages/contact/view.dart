
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/pages/contact/widgets/contact_list.dart';

import 'index.dart';

class ContactPage extends GetView<ContactController> {
  const ContactPage({super.key});

  AppBar _buildAppBar() {
    return AppBar(
        title: Text(
      "contact",
      style: TextStyle(
        color: AppColors.primaryBackground,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    //print(controller.state.contactList.length);
    return Scaffold(
      appBar: _buildAppBar(),
      body: ContactList(),
    );
  }
}
