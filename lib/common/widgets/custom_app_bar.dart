import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/values/dimensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconButton? icon;
  final List<Widget>? actions;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.icon,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: icon,
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold)),
      centerTitle: false,
      elevation: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(Dimensions.height50*2);
}
