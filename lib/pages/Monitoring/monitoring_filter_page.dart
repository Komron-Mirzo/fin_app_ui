import 'package:fin_app_ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/colors.dart';

class MonitoringFilterPage extends StatefulWidget {
  const MonitoringFilterPage({Key? key}) : super(key: key);

  @override
  State<MonitoringFilterPage> createState() => _MonitoringFilterPageState();
}

class _MonitoringFilterPageState extends State<MonitoringFilterPage> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          child: Column(
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
                        "Filtr",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.greyTextColor,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Tozalash",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.redTextColor,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterDateCard extends StatelessWidget {
  const FilterDateCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 7.0,
            spreadRadius: 1.0,
            color: AppColor.greyTextColor.withOpacity(0.5),
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          "Oy",
          style: CustomTextStyle.black14bold,
        ),
      ),
    );
  }
}
