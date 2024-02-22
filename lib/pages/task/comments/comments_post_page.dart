import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';

class CommentsPostPage extends StatelessWidget {
  const CommentsPostPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/background.jpg'),
                  backgroundColor: Colors.greenAccent,
                  //radius: 120,
                )
              ],
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'General Kihara',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: Dimensions.height5,
                ),
                Text(
                  'Software Developer',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontWeight: FontWeight.w400),
                )
              ],
            ),
            Expanded(child: Container()),
            Text(
              '1 day ago',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20 * 2 + Dimensions.width10),
              width: Dimensions.width295,
              //height: 300,
              child: Text(
                'IoT and machine learning can be used '
                'together to create intelligent and predictive applications'
                'that can analyze data from sensors, make predictions, detect'
                'anomalies, or take actions in response to that data. The combination'
                'of these two technologies has the potential to revolutionize many industries,'
                'including healthcare, transportation, and manufacturing',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20 * 2 + Dimensions.width10),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/background.jpg'),
                        backgroundColor: Colors.greenAccent,
                        //radius: 120,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/background.jpg'),
                        backgroundColor: Colors.greenAccent,
                        //radius: 120,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/background.jpg'),
                        backgroundColor: Colors.greenAccent,
                        //radius: 120,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            Column(
              children: [
                Text(
                  '2 replies',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontWeight: FontWeight.w400),
                )
              ],
            ),
            Expanded(child: Container()),
            Text(
              'Reply',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w400),
            )
          ],
        )
      ],
    );
  }
}
