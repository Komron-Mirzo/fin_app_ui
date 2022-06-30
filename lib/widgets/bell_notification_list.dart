import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../styles/colors.dart';

class BellNotificationList extends StatelessWidget {
  BellNotificationList({
    Key? key,
    required this.customIcon,
    required this.customDescription,
    required this.customTitle,
    required this.customDate,
  }) : super(key: key);

  IconData customIcon;
  String customTitle;
  String customDescription;
  String customDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15.0,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.greyTextColor.withOpacity(0.5),
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Icon(
                customIcon,
                size: 22.0,
                color: AppColor.greenTextColor,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  customTitle,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  customDescription,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: AppColor.greyTextColor,
                    height: 1.5,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  customDate,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Icon(
                FontAwesomeIcons.chevronRight,
                size: 20.0,
                color: AppColor.greenTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
