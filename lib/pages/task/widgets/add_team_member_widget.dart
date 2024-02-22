import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/values/dimensions.dart';
import 'package:kabianga_task_mastery/pages/task/task_pages/add_team_member.dart';


class AddTeamMemberWidget extends StatelessWidget {
  final List<String> imageUrls;
  final int maxImages;

  const AddTeamMemberWidget(
      {Key? key, required this.imageUrls, this.maxImages = 5})
      : assert(maxImages > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayedImages = imageUrls.take(maxImages).toList();
    return SizedBox(
      height: Dimensions.height80,
      child: Stack(
        children: [
          ListView.builder(
            itemCount: displayedImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: CircleAvatar(
                    backgroundImage:
                        //NetworkImage(displayedImages[index]),
                        AssetImage(imageUrls[index])),
              );
            },
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FloatingActionButton(
              onPressed: () {
                // Handle adding a new image
                Get.to(() => const AddTeamMember());
              },
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
