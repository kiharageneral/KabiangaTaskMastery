import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/values/dimensions.dart';

class CommentInputWidget extends StatelessWidget {
  const CommentInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Dimensions.height50,
        margin: EdgeInsets.only(
            left: Dimensions.width20,
            bottom: Dimensions.height20,
            right: Dimensions.width20,
            top: Dimensions.width20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius20),
          ),
          color: Theme.of(context).colorScheme.secondary.withOpacity(150),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            suffix: IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
            hintText: 'Write a comment',
            border: const OutlineInputBorder(),
            prefix: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.image),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.attach_file),
                  onPressed: () async {
                    // final result = await FilePicker.platform.pickFiles();
                    // if (result != null) {}
                  },
                ),
              ],
            ),
          ),
          maxLines: null,
        ),
      ),
    );
  }
}
