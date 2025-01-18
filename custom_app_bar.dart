import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  // You can add more parameters like background color, actions, etc.
  final Color backgroundColor;
  final List<Widget>? actions;

  CustomAppBar(String s, {
    required this.title,
    this.backgroundColor = Colors.blue,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: backgroundColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
