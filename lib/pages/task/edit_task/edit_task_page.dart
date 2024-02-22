import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';
import 'package:kabianga_task_mastery/controllers/add_screen_controller.dart';
import 'package:kabianga_task_mastery/pages/task/widgets/team_member_widget.dart';


class EditTaskPage extends StatelessWidget {
  const EditTaskPage({Key? key}) : super(key: key);

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
          title: 'Edit Task',
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: CustomContainer(
                  height: MediaQuery.of(context).size.height,
                  child: GetBuilder<AddScreenController>(
                      init: AddScreenController(),
                      //initState: (_) {},
                      builder: (controller) {
                        return Column(
                          children: [
                            Form(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    //controller: ,
                                    decoration: InputDecoration(
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(fontWeight: FontWeight.w400),
                                      labelStyle: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(fontWeight: FontWeight.bold),
                                      hintText: 'Enter the task name here ',
                                      labelText: 'Task name ',
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    'Team Member',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 20),
                                  const TeamMemberWidget(),
                                  const SizedBox(height: 20),
                                  Text(
                                    'Description',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  TextFormField(
                                    maxLines: null,
                                    //controller: ,
                                    decoration: InputDecoration(
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(fontWeight: FontWeight.w400),
                                      labelStyle: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(fontWeight: FontWeight.bold),
                                      hintText: 'Enter the task name here ',
              
                                      //labelText: 'Task name ',
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    'Board',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    // margin: EdgeInsets.only(left: 10),
                                    height: 32,
                                    child: Container(color: Colors.green,)
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
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
                                              12), // <-- Radius
                                        ),
                                      ),
                                      child: Text(
                                        'Done',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
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
            ),
          ],
        ),
      ),
    );
  }
}
