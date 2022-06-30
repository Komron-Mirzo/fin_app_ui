import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../styles/colors.dart';

class NotificationDetails extends StatefulWidget {
  final int index;
  final String title, description, date, img;
  final IconData icon;

  const NotificationDetails(
      this.index, this.title, this.description, this.date, this.img, this.icon,
      {Key? key})
      : super(key: key);

  @override
  State<NotificationDetails> createState() => _NotificationDetailsState();
}

class _NotificationDetailsState extends State<NotificationDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.chevronLeft,
                      size: 20.0,
                      color: AppColor.greenTextColor,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Xabarnoma",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.greyTextColor,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Image.asset(widget.img,
                    width: MediaQuery.of(context).size.width * 0.8),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Icon(
                    widget.icon,
                    size: 20.0,
                    color: AppColor.greenTextColor,
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    widget.date,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: AppColor.greyTextColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
