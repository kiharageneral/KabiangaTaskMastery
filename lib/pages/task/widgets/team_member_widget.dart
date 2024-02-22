import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/pages/task/task_pages/add_team_member.dart';


class TeamMemberWidget extends StatelessWidget {
  const TeamMemberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            //color: Colors.black,
            width: Dimensions.width300,
            height: Dimensions.height20*3,

            child: Row(
              children: [
                GestureDetector(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                              backgroundImage:
                                  //NetworkImage(displayedImages[index]),
                                  AssetImage('assets/images/background.jpg')),
                        ],
                      ),
                      const Text('Name')
                    ],
                  ),
                ),
                GestureDetector(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                              backgroundImage:
                                  //NetworkImage(displayedImages[index]),
                                  AssetImage('assets/images/background.jpg')),
                        ],
                      ),
                      const Text('Name')
                    ],
                  ),
                ),
                GestureDetector(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                              backgroundImage:
                                  //NetworkImage(displayedImages[index]),
                                  AssetImage('assets/images/background.jpg')),
                        ],
                      ),
                      const Text('Name')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //print('Tapped');
                  },
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                              backgroundImage:
                                  //NetworkImage(displayedImages[index]),
                                  AssetImage('assets/images/background.jpg')),
                        ],
                      ),
                      const Text('General')
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: Dimensions.height50*2,
              child: Center(
                  child: FloatingActionButton(
                onPressed: () {
                  Get.to(() => const AddTeamMember());
                },
                child: const Icon(Icons.add),
              )))
        ],
      ),
    );
  }
}
