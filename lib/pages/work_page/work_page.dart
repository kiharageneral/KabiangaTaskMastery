import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';
import 'package:kabianga_task_mastery/pages/task/widgets/task_category_widget.dart';


class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

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
        appBar: const CustomAppBar(
          title: 'Work Page',
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F4FD),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
