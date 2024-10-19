import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({
    super.key,
    required this.text,
    this.isCenterTitle = false,
    this.isBackArrow = true,
    this.color,
    this.action,
  });

  final String text;
  final bool isCenterTitle;
  final bool isBackArrow;
  final Color? color;
  final dynamic? action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
      centerTitle: isCenterTitle,
      automaticallyImplyLeading: isBackArrow,
      backgroundColor: color,
      actions: action,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}