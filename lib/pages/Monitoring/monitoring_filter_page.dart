import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:date_time_picker/date_time_picker.dart';
import '../../styles/colors.dart';
import '../../styles/text_styles.dart';
import '../Asosiy/my_cards.dart';
import 'filter_container_card.dart';

class MonitoringFilterPage extends StatefulWidget {
  const MonitoringFilterPage({Key? key}) : super(key: key);

  @override
  State<MonitoringFilterPage> createState() => _MonitoringFilterPageState();
}

class _MonitoringFilterPageState extends State<MonitoringFilterPage> {
  int? tappedIndex;
  List tabContainers = [
    {
      "name": "Bugun",
    },
    {
      "name": "Hafta",
    },
    {
      "name": "Oy",
    },
  ];

  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                height: 60.0,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      setState(() {
                        tappedIndex = index;
                      });
                    },
                    child: FilterContainerCard(
                      tappedIndex: tappedIndex,
                      index: index,
                      name: tabContainers[index]["name"],
                    ),
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      const Expanded(child: SizedBox(width: 10.0)),
                  itemCount: tabContainers.length,
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Davrni tanlang",
                  style: CustomTextStyle.black14bold,
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Row(
                children: [
                  Text(
                    "dan",
                    style: CustomTextStyle.bigBlackText,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Expanded(
                    child: DateTimePicker(
                      type: DateTimePickerType.date,
                      dateMask: 'd MMM, yyyy',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      selectableDayPredicate: (date) {
                        // Disable weekend days to select from the calendar
                        if (date.weekday == 6 || date.weekday == 7) {
                          return false;
                        }
                        return true;
                      },
                      onChanged: (val) => print(val),
                      validator: (val) {
                        print(val);
                        return null;
                      },
                      onSaved: (val) => print(val),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Icon(
                    FontAwesomeIcons.calendar,
                    color: AppColor.greenTextColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              Row(
                children: [
                  Text(
                    "gacha",
                    style: CustomTextStyle.bigBlackText,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.11,
                  ),
                  Expanded(
                    child: DateTimePicker(
                      type: DateTimePickerType.date,
                      dateMask: 'd MMM, yyyy',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      selectableDayPredicate: (date) {
                        // Disable weekend days to select from the calendar
                        if (date.weekday == 6 || date.weekday == 7) {
                          return false;
                        }

                        return true;
                      },
                      onChanged: (val) => print(val),
                      validator: (val) {
                        print(val);
                        return null;
                      },
                      onSaved: (val) => print(val),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Icon(
                    FontAwesomeIcons.calendar,
                    color: AppColor.greenTextColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              const Divider(),
              const SizedBox(
                height: 18.0,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyCards()));
                  });
                },
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Karta bo'yicha filtrlash",
                          style: CustomTextStyle.black14bold,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Kartalarim",
                          style: CustomTextStyle.grey12bold,
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(width: 10.0),
                    ),
                    Icon(
                      FontAwesomeIcons.chevronRight,
                      color: AppColor.greenTextColor,
                      size: 18.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              GestureDetector(
                onTap: () {
                  showMaterialModalBottomSheet(
                      bounce: true,
                      expand: true,
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20.0,
                              ),
                              Center(
                                child: Container(
                                  height: 4.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      15.0,
                                    ),
                                    color: AppColor.greyTextColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Center(
                                child: Text(
                                  "Toifalar",
                                  style: CustomTextStyle.bigBlackText,
                                ),
                              ),
                              Expanded(
                                child: ListView.separated(
                                  itemBuilder: (context, index) => Text(
                                    "Toifa" + index.toString(),
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  itemCount: 27,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                    height: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kategoriya bo'yicha filtrlash",
                          style: CustomTextStyle.black14bold,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Toifalar",
                          style: CustomTextStyle.grey12bold,
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(width: 10.0),
                    ),
                    Icon(
                      FontAwesomeIcons.chevronRight,
                      color: AppColor.greenTextColor,
                      size: 18.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: AppColor.greenTextColor,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.greyTextColor,
                        spreadRadius: 0.0,
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "Qabul qilish",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
