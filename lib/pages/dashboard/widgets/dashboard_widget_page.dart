import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kabianga_task_mastery/common/values/dimensions.dart';
import 'package:kabianga_task_mastery/pages/dashboard/widgets/dashboard_task_widget.dart';
import 'package:kabianga_task_mastery/pages/dashboard/widgets/pie_chart_widget.dart';

class DashboardWidgetPage extends StatelessWidget {
  const DashboardWidgetPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.background.withOpacity(0.8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.tertiary,
              ),
              margin: EdgeInsets.only(
                  top: Dimensions.height50,
                  left: Dimensions.width10,
                  right: Dimensions.width10),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: Dimensions.width10),
                  child: Text(
                    'Dashboard',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.all(Dimensions.height5),
                  child: CircleAvatar(
                    radius: Dimensions.radius40,
                    backgroundImage:
                        const AssetImage("assets/images/background.jpg"),
                  ),
                ),
              ]),
            ),
            SizedBox(height: Dimensions.height20),
            const PieChartWidget(),
            SizedBox(height: Dimensions.height20),
            GestureDetector(
              onTap: () {
                //Get.to(() => const WorkPage());
              },
              child: const DashboardTaskWidget(
                icon: Icons.note_sharp,
                numberOfTask: '55',
                taskCategory: 'Total task',
                color: Colors.white,
              ),
            ),
            const DashboardTaskWidget(
              icon: Icons.check_circle_outline,
              numberOfTask: '13',
              taskCategory: 'completed',
              color: Color(0xFF5A55CA),
            ),
            const DashboardTaskWidget(
                icon: Icons.hourglass_top_outlined,
                numberOfTask: '25',
                taskCategory: 'Working On',
                color: Color(0xFF2CC09C)),
            const DashboardTaskWidget(
                icon: Icons.warning,
                numberOfTask: '13',
                taskCategory: 'Pending',
                color: Color(0xFFF26950)),
          ],
        ),
      ),
    );
  }
}
