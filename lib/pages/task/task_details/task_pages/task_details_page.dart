import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';
import 'package:kabianga_task_mastery/pages/task/comments/comments_post_page.dart';


class TaskDetailsPage extends StatelessWidget {
  const TaskDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary
            ]),
      ),
      child: Scaffold(
        appBar: CustomAppBar(
          icon: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios_new)),
          title: 'Task Details',
          actions: [
            PopupMenuButton(
                // add icon, by default "3 dot" icon
                // icon: Icon(Icons.book)
                itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                  value: 0,
                  child: Text("Invite member"),
                ),
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text("Edit task"),
                ),
                const PopupMenuItem<int>(
                  value: 2,
                  child: Text("History"),
                ),
                const PopupMenuItem<int>(
                  value: 3,
                  child: Text("Share link"),
                ),
                PopupMenuItem<int>(
                  value: 4,
                  child: GestureDetector(
                    onTap: () {
                      // Remove the currently selected task
                      //taskController.tasks.remove(taskController.selectedTask.value);
                      // Navigate back to the previous screen
                      Get.back();
                    },
                    child: const Text('Leave From task'),
                  ),
                ),
              ];
            }, onSelected: (value) {
              if (value == 0) {
                //print("invite link");
                //Get.to(() => const InviteMemberPage());
              } else if (value == 1) {
                //Get.to(() => const EditTaskPage());
              } else if (value == 2) {
                //Get.to(() => const HistoryPage());
              } else if (value == 3) {
                //Get.to(() => const ProfilePage());
              }
            }),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: CustomContainer(
                height: MediaQuery.of(context).size.height,
                child: Container(
                  margin: EdgeInsets.only(
                      right: Dimensions.width10,
                      left: Dimensions.width10,
                      top: Dimensions.height20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Kabianga TaskMastery Development',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.bold, ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        Text(
                          'Kabianga TaskMastery Development - App UI development, integration with backend, and release of the application',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        SizedBox(
                          height: Dimensions.height50 * 2,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Teams',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            CircleAvatar(
                                                backgroundImage:
                                                    //NetworkImage(displayedImages[index]),
                                                    AssetImage(
                                                        'assets/images/background.jpg')),
                                          ],
                                        ),
                                        Text(
                                          'Name',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                  child: Container(
                                width: 30,
                              )),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Est Date',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Oct 30 2023',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Task',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Expanded(child: Container()),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.amber),
                                child: IconButton(
                                    color: Colors.green,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      size: 15,
                                    ))),
                          ],
                        ),
                        ListView.builder(
                          primary: false,

                          //physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(
                                top: Dimensions.height5,
                              ),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    Dimensions
                                        .width20)), // Set rounded corner radius
                              ),
                              child: ListTile(
                                //leading: Checkbox(value: , onChanged: onChanged)
                                leading: const Icon(
                                  Icons.select_all,
                                ),
                                title: Text(
                                  'Create User flow',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          },
                        ),

                        SizedBox(height: Dimensions.height20),
                        // Expanded(child: CommentsPostPage()),
                        const CommentsPostPage(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
