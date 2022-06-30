import 'package:flutter/material.dart';
import '../styles/colors.dart';

class DrawerList extends StatelessWidget {
  DrawerList({
    Key? key,
    required this.customIcon,
    required this.customText,
  }) : super(key: key);

  IconData customIcon;
  String customText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 0.0,
      ),
      leading: Icon(
        customIcon,
        color: AppColor.greenTextColor,
        size: 16.0,
      ),
      title: Text(
        customText,
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      minLeadingWidth: 25.0,
    );
  }
}
