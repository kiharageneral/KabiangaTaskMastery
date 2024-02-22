import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

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
          title: 'Notifications',
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
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  return Card(
                      margin: const EdgeInsets.only(top: 20),
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, top: 5),
                        height: 70,
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Kabianga TaskMastery App developed ',
                                  style: TextStyle(
                                      color: Color(0xFF0B204C), fontSize: 14),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                              margin: const EdgeInsets.only(left: 40),
                              child: Row(
                                children: const [
                                  Text('5 March 2023'),
                                  SizedBox(width: 5),
                                  VerticalDivider(
                                    thickness: 4,
                                    color: Colors.red,
                                    width: 10,
                                  ),
                                  Text('00:29Am by General Kihara')
                                ],
                              ),
                            )
                          ],
                        ),
                      ));
                },
                itemCount: 2,
              ),
            ),
          ),

          ],
        ),
      ),
    );
  }
}
