import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:intl/intl.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/pages/task/task_pages/add_task_page.dart';
import 'package:kabianga_task_mastery/pages/task/widgets/task_category_widget.dart';


class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.background.withOpacity(0.8),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              left: Dimensions.height10,
              top: Dimensions.height20,
              right: Dimensions.height10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Task',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.fontSize24),
                  ),
                  Expanded(child: Container()),
                  CircleAvatar(
                    radius: Dimensions.radius20,
                    backgroundImage:
                        const AssetImage("assets/images/background.jpg"),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height20),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat.yMMMMd('en_US').format(DateTime.now()),
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Today',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.fontSize16),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text('add task'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor))),
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                          Color(0xFFF26950)),
                    ),
                    onPressed: () => Get.to(() => AddTaskPage()),
                  ),
                ],
              ),
              // SizedBox(height: Dimensions.height20),
              // HorizontalCalendar(
              //   date: DateTime.now().add(const Duration(days: 1)),
              //   initialDate: DateTime.now().subtract(const Duration(days: 2)),
              //   textColor: Theme.of(context).primaryColor,
              //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              //   selectedColor: Theme.of(context).colorScheme.secondary,
              //   showMonth: false,
              //   onDateSelected: (date) {
              //     if (kDebugMode) {
              //       print(date.toString());
              //     }
              //   },
              // ),
              SizedBox(height: Dimensions.height20),
            
              const TaskCategoryWidget(
                amountPaid: 'Web design for ksh5000',
                color: Colors.red,
                levelOfTask: 'Urgent',
                timeToDoTask: '10 - 11am',
                persons: '2persons',
                titleOfTheTask: 'New Web app UI design',
              ),
              SizedBox(height: Dimensions.height20),
              const TaskCategoryWidget(
                amountPaid: 'Web design for ksh5000',
                color: Color(0xFF2CC09C),
                levelOfTask: 'running',
                timeToDoTask: '10 - 11am',
                persons: '2persons',
                titleOfTheTask: 'Application Design meeting',
              ),
              SizedBox(height: Dimensions.height20),
              const TaskCategoryWidget(
                amountPaid: 'Web design for ksh5000',
                color: Color(0xFF5A55CA),
                levelOfTask: 'Ongoing',
                timeToDoTask: '10 - 11am',
                persons: '2persons',
                titleOfTheTask: 'New Web app UI design',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
