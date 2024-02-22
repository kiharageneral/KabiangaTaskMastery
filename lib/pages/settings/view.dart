import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';

import 'index.dart';

class SettingsPage extends GetView<SettingController> {
  final _isSwitched = false;

  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      backgroundColor:
          Theme.of(context).colorScheme.background.withOpacity(0.8),
      body: Container(
        margin: EdgeInsets.only(
            top: Dimensions.height20,
            right: Dimensions.width20,
            left: Dimensions.width10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(height: Dimensions.height50 - Dimensions.height10),
            Row(
              children: [
                const Icon(Icons.notifications),
                SizedBox(width: Dimensions.width10),
                Text(
                  'Notifications',
                  style: TextStyle(
                      fontSize:
                          Dimensions.fontSize16 + Dimensions.fontSize14 / 7,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              children: [
                const Text('Allow Notifications '),
                Expanded(child: Container()),
                Switch(
                    // thumb color (round icon)
                    activeColor: Colors.amber,
                    activeTrackColor: Colors.cyan,
                    inactiveThumbColor: Colors.blueGrey.shade600,
                    inactiveTrackColor: Colors.grey.shade400,
                    splashRadius: Dimensions.radius50,
                    // boolean variable value
                    //value: forAndroid,
                    value: _isSwitched,
                    // changes the state of the switch
                    // onChanged: (value) => setState(() => forAndroid = value),
                    // ignore: avoid_returning_null_for_void
                    onChanged: (value) => value),
              ],
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              children: const [
                Text('Open System Settings'),
              ],
            ),
            SizedBox(height: Dimensions.height20 + Dimensions.height10),
            Row(
              children: [
                const Icon(Icons.sync),
                SizedBox(width: Dimensions.width10),
                Text(
                  'Sync',
                  style: TextStyle(
                      fontSize:
                          Dimensions.fontSize16 + Dimensions.fontSize14 / 7,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              children: [
                const Text('Friendly Mode '),
                Expanded(child: Container()),
                IconButton(
                    onPressed: () {
                      Get.changeThemeMode(
                          Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
                      //print(Get.isDarkMode);
                    },
                    icon: Icon(
                        Get.isDarkMode ? Icons.dark_mode : Icons.light_mode))
              ],
            ),
            SizedBox(height: Dimensions.height20 + Dimensions.height10),
            Row(
              children: [
                const Icon(Icons.settings),
                SizedBox(width: Dimensions.width10),
                Text(
                  'General Settings',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize:
                          Dimensions.fontSize16 + Dimensions.fontSize14 / 7),
                )
              ],
            ),
            SizedBox(height: Dimensions.height20),
            GestureDetector(
              child: const Text('Disconnect Account from Google'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Are you sure to log out',
                  content: Container(),
                  onConfirm: () {
                    controller.goLogOut();
                  },
                  onCancel: () {},
                  textConfirm: 'Confirm',
                  textCancel: 'Cancel',
                  confirmTextColor: Colors.white,
                );
              },
            ),
            SizedBox(height: Dimensions.height20),
            const Text('Delete Account'),
            SizedBox(height: Dimensions.height20),
            const Text('About App'),
            SizedBox(height: Dimensions.height20),
            GestureDetector(onTap: () {}, child: const Text('Logout')),
          ],
        ),
      ),
    ));
  }
}
