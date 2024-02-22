import 'package:flutter/material.dart';

import 'package:kabianga_task_mastery/common/values/dimensions.dart';

class DashboardTaskWidget extends StatelessWidget {
  final String taskCategory;

  final Color color;
  final IconData icon;
  final String numberOfTask;
  const DashboardTaskWidget({
    Key? key,
    required this.taskCategory,
    required this.color,
    required this.icon,
    required this.numberOfTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: Dimensions.width400,
          height: Dimensions.height80,
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.tertiary,
          ),
          child: Row(
            children: [
              Container(
                width: Dimensions.width50,
                height: Dimensions.height50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0x0fff0f4f)),
                child: GestureDetector(
                  onTap: () {},
                  child:  Icon(
                    icon,
                    color: color,
                  ),
                ),
              ),
              SizedBox(width: Dimensions.width20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    taskCategory,
                    style: TextStyle(fontSize: Dimensions.fontSize16),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      numberOfTask,
                      style: TextStyle(fontSize: Dimensions.fontSize16),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
