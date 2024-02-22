import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';

class WorkWithWidget extends StatelessWidget {
  const WorkWithWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.height,
        height: Dimensions.height50*3,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    margin:  EdgeInsets.only(left: Dimensions.width10),
                    width: Dimensions.width50*3,
                    height: Dimensions.width50*3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Theme.of(context).colorScheme.tertiary,),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin:  EdgeInsets.only(top: Dimensions.height10),
                              height: Dimensions.height5*9,
                              width: Dimensions.width5*9,
                              child:  CircleAvatar(
                                radius: Dimensions.radius50,
                                backgroundImage: const AssetImage('assets/images/background.jpg'),
                                ),
                              ),
                            
                          ],
                        ),
                         SizedBox(height: Dimensions.height10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('General Kihara'),
                          ],
                        ),
                         SizedBox(height: Dimensions.height5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [Text('Flutter Developer')],
                        )
                      ],
                    ),
                  ),
              ],
            )
          ],
        ));
  }
}
