import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, required this.icon, required this.text, this.onTap,
  });

  final IconData icon;
  final String text;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(icon),
      title: Text(text),
      onTap:onTap ,
      hoverColor: Colors.purple,
      focusColor: Colors.green,
      enabled: true,





    );
  }
}