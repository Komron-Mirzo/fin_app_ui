import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/bell_notification_list.dart';
import '../styles/colors.dart';
import 'notification_details.dart';

class BellNotification extends StatefulWidget {
  const BellNotification({Key? key}) : super(key: key);

  @override
  State<BellNotification> createState() => _BellNotificationState();
}

List notificationList = [
  {
    "icon": FontAwesomeIcons.arrowRightArrowLeft,
    "title": "O'tkazma",
    "description":
        "Sizning kartangizga (8600 31** **** 5027)\nTESHAYEV TESHA tomonidan 500 000\nso'm miqdorida pul o'tkazildi.\nMazzami, sizga mazzami?",
    "date": "2 iyn 2022",
    "img": "assets/pics/money_transfer.png"
  },
  {
    "icon": FontAwesomeIcons.arrowRightArrowLeft,
    "title": "O'tkazma",
    "description":
        "Sizning kartangizga (8600 31** **** 5027)\nTESHAYEV TESHA tomonidan 80 000\nso'm miqdorida pul o'tkazildi.\nMazzami, sizga mazzami?",
    "date": "3 iyn 2022",
    "img": "assets/pics/money_transfer.png"
  },
  {
    "icon": FontAwesomeIcons.circleInfo,
    "title": "Texnik ishlar",
    "description":
        "Hurmatli mijoz! 1-iyun kuni ilovada\ntexnik ishlar olib boriladi.\nShuning uchun ilovaga kirmasligingizni\nva umuman telefon ishlatmasligingizni\nso'raymiz!\nBATTAR BO'LING!",
    "date": "1 iyn 2022",
    "img": "assets/pics/technical.png"
  },
  {
    "icon": FontAwesomeIcons.arrowRightArrowLeft,
    "title": "O'tkazma",
    "description":
        "Sizning kartangizga (8600 31** **** 5027)\nTESHAYEV TESHA tomonidan 2 500 000\nso'm miqdorida pul o'tkazildi.\nMazzami, sizga mazzami?",
    "date": "31 may 2022",
    "img": "assets/pics/money_transfer.png"
  },
  {
    "icon": FontAwesomeIcons.arrowRightArrowLeft,
    "title": "O'tkazma",
    "description":
        "Sizning kartangizga (8600 31** **** 5027)\nTESHAYEV TESHA tomonidan 750 000\nso'm miqdorida pul o'tkazildi.\nMazzami, sizga mazzami?",
    "date": "15 may 2022",
    "img": "assets/pics/money_transfer.png"
  },
  {
    "icon": FontAwesomeIcons.circleInfo,
    "title": "Texnik ishlar",
    "description":
        "Hurmatli mijoz! 15-may kuni ilovada\ntexnik ishlar olib boriladi.\nShuning uchun ilovaga kirmasligingizni\nva umuman telefon ishlatmasligingizni\nso'raymiz!\nBATTAR BO'LING!",
    "date": "15 may 2022",
    "img": "assets/pics/technical.png"
  },
  {
    "icon": FontAwesomeIcons.arrowRightArrowLeft,
    "title": "O'tkazma",
    "description":
        "Sizning kartangizga (8600 31** **** 5027)\nTESHAYEV TESHA tomonidan 110 000\nso'm miqdorida pul o'tkazildi.\nMazzami, sizga mazzami?",
    "date": "10 may 2022",
    "img": "assets/pics/money_transfer.png"
  },
  {
    "icon": FontAwesomeIcons.arrowRightArrowLeft,
    "title": "O'tkazma",
    "description":
        "Sizning kartangizga (8600 31** **** 5027)\nTESHAYEV TESHA tomonidan 980 000\nso'm miqdorida pul o'tkazildi.\nMazzami, sizga mazzami?",
    "date": "9 may 2022",
    "img": "assets/pics/money_transfer.png"
  },
  {
    "icon": FontAwesomeIcons.circleInfo,
    "title": "Texnik ishlar",
    "description":
        "Hurmatli mijoz! 29-aprel kuni ilovada\ntexnik ishlar olib boriladi.\nShuning uchun ilovaga kirmasligingizni\nva umuman telefon ishlatmasligingizni\nso'raymiz!\nBATTAR BO'LING!",
    "date": "29 apr 2022",
    "img": "assets/pics/technical.png"
  },
  {
    "icon": FontAwesomeIcons.arrowRightArrowLeft,
    "title": "O'tkazma",
    "description":
        "Sizning kartangizga (8600 31** **** 5027)\nTESHAYEV TESHA tomonidan 1 200 000\nso'm miqdorida pul o'tkazildi.\nMazzami, sizga mazzami?",
    "date": "25 apr 2022",
    "img": "assets/pics/money_transfer.png"
  },
  {
    "icon": FontAwesomeIcons.circleInfo,
    "title": "Texnik ishlar",
    "description":
        "Hurmatli mijoz! 20-aprel kuni ilovada\ntexnik ishlar olib boriladi.\n Shuning uchun ilovaga kirmasligingizni\n va umuman telefon ishlatmasligingizni\nso'raymiz!\n BATTAR BO'LING!",
    "date": "20 apr 2022",
    "img": "assets/pics/technical.png"
  },
];

class _BellNotificationState extends State<BellNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
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
                        "Xabarnoma",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.greyTextColor,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.listCheck,
                    size: 20.0,
                    color: AppColor.greenTextColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NotificationDetails(
                              index,
                              notificationList[index]["title"],
                              notificationList[index]["description"],
                              notificationList[index]["date"],
                              notificationList[index]["img"],
                              notificationList[index]["icon"],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 5.0,
                          ),
                          child: BellNotificationList(
                            customIcon: FontAwesomeIcons.arrowRightArrowLeft,
                            customTitle: notificationList[index]["title"],
                            customDescription: notificationList[index]
                                ["description"],
                            customDate: notificationList[index]["date"],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                          height: 15.0,
                        ),
                    itemCount: notificationList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
