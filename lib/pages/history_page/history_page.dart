import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';


class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

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
          title: 'History',
        ),
        body: Column(
          children: [
            Expanded(
              child: CustomContainer(
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const Divider(height: 1),
                  itemBuilder: (context, index) {
                    return Card(
                        color: Theme.of(context).colorScheme.tertiary,
                        margin: const EdgeInsets.only(top: 20),
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, top: 5),
                          height: 70,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.stacked_bar_chart),
                                  SizedBox(width: Dimensions.width20),
                                  Text(
                                    'Kabianga TaskMastery App developed ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Container(
                                margin: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Text(
                                      '5 March 2023',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                    ),
                                    SizedBox(width: Dimensions.width10 / 2),
                                    VerticalDivider(
                                      thickness: Dimensions.width10 / 2,
                                      color: Colors.red,
                                      width: 10,
                                    ),
                                    Text(
                                      '00:29Am by General Kihara',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w400),
                                    )
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
