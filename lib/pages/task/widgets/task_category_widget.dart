import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/pages/task/task_details/task_pages/task_details_page.dart';


class TaskCategoryWidget extends StatelessWidget {
  ///this shows the level in which the task belong ie "running, urgent, ongoing, etc"

  final String levelOfTask;

  /// this is the name of the task itself eg "New Web app UI design"

  final String titleOfTheTask;

  /// this is the amount of money that should be paid for the task eg "Web design for ksh 5000"

  final String amountPaid;

  /// this is the time to start working on that project eg "from 10-11am"

  final String timeToDoTask;

  /// this is the color that will be used in different parts of the widget

  final Color color;

  /// this is the size of different elements in widget

  final double? size;

  /// number of people involved in the project

  final String persons;

  const TaskCategoryWidget({
    Key? key,
    required this.levelOfTask,
    required this.titleOfTheTask,
    required this.amountPaid,
    required this.timeToDoTask,
    required this.color,
    this.size,
    required this.persons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const TaskDetailsPage());
      },
      child: Container(
        color: Theme.of(context).colorScheme.tertiary,
        height: Dimensions.height50 * 3 + Dimensions.height10,
        child: Container(
          padding: EdgeInsets.only(
              top: Dimensions.height10, left: Dimensions.height10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20/2),
              color: Theme.of(context).colorScheme.tertiary),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    levelOfTask,
                    style: TextStyle(
                      color: color,
                      fontSize: size,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height10 - Dimensions.height5),
               Divider(height: Dimensions.width10/5, color: Theme.of(context).colorScheme.surface),
              Container(
                margin: EdgeInsets.only(top: Dimensions.height10),
                height: Dimensions.height50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(titleOfTheTask,
                            style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.fontSize20),),
                        SizedBox(height: Dimensions.height5),
                        Text(
                          amountPaid,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.fontSize16),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    PopupMenuButton(
                        // add icon, by default "3 dot" icon
                        // icon: Icon(Icons.book)
                        itemBuilder: (context) {
                      return [
                        PopupMenuItem<int>(
                          value: 0,
                          child: Text("My Account",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor)),
                        ),
                        PopupMenuItem<int>(
                          value: 1,
                          child: Text("Settings",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor)),
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Text("Logout",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor)),
                        ),
                      ];
                    }, onSelected: (value) {
                      if (value == 0) {
                        if (kDebugMode) {
                          print("My account menu is selected.");
                        }
                      } else if (value == 1) {
                        if (kDebugMode) {
                          print("Settings menu is selected.");
                        }
                      } else if (value == 2) {
                        if (kDebugMode) {
                          print("Logout menu is selected.");
                        }
                      }
                    }),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: Dimensions.height10, bottom: Dimensions.height10),
                    child: Row(
                      children: [
                        Column(
                          children:  [
                            Icon(Icons.timer_sharp, color: Theme.of(context).colorScheme.surface)
                          ],
                        ),
                        SizedBox(width: Dimensions.width10),
                        Column(
                          children: [
                            Text(timeToDoTask,
                               style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.fontSize16),)
                          ],
                        ),
                        SizedBox(width: Dimensions.width10),
                        Column(
                          children:  [
                            Icon(Icons.people_outline, color:Theme.of(context).colorScheme.surface)
                          ],
                        ),
                        SizedBox(width: Dimensions.width10),
                        Column(
                          children: [
                            Text(persons,
                                style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.fontSize16),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
