import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';
import 'package:kabianga_task_mastery/controllers/add_task_controller.dart';
import 'package:kabianga_task_mastery/pages/task/widgets/date_picker_widget.dart';
import 'package:kabianga_task_mastery/pages/task/widgets/team_member_widget.dart';
import 'package:kabianga_task_mastery/pages/task/widgets/time_picker_widget.dart';


class AddTaskPage extends StatelessWidget {
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController endTimeController = TextEditingController();
  final _selectedDate = DateTime.now().obs;
  AddTaskPage({Key? key}) : super(key: key);

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
          title: 'Add Task',
        ),
        body: CustomContainer(
          height: MediaQuery.of(context).size.height,
          child: GetBuilder<AddTaskController>(
              init: AddTaskController(),
              initState: (_) {},
              builder: (controller) {
                return Column(
                  children: [
                    Expanded(
                      child: Form(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Task Name',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Enter the name of the task',
                                ),
                              ),
                              SizedBox(height: Dimensions.height20),
                              Text(
                                'Team Member',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const TeamMemberWidget(),
                              SizedBox(height: Dimensions.height20),
                              Text(
                                'Date',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              DatePickerWidget(selectedDate: _selectedDate),
                              SizedBox(height: Dimensions.height20),
                              TimePickerWidget(
                                  startTimeController: startTimeController,
                                  endTimeController: endTimeController),
                              SizedBox(height: Dimensions.height20),
                              Text(
                                'Description',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              TextFormField(
                                maxLines: null,
                                //controller: ,
                                decoration: const InputDecoration(
                                  labelStyle: TextStyle(
                                      color: Color(0xFF22215B),
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14),
                                  hintText:
                                      'Enter description of the task here',

                                  //labelText: 'Task name ',
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Board',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: Dimensions.height20),
                              SizedBox(
                                // margin: EdgeInsets.only(left: 10),
                                height: Dimensions.height50 / 2 +
                                    Dimensions.height10,
                                child: Container(color: Colors.green,)
                              ),
                              SizedBox(height: Dimensions.height20)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20 * 2,
                      child: Stack(fit: StackFit.expand, children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius20), // <-- Radius
                                ),
                              ),
                              child: Text(
                                'Done',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
