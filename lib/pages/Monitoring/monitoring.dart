import 'package:fin_app_ui/pages/Monitoring/monitoring_filter_page.dart';
import 'package:fin_app_ui/widgets/monitoring_list_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/drawer_list_card.dart';
import '../bell_notification.dart';

class MonitoringPage extends StatefulWidget {
  const MonitoringPage({Key? key}) : super(key: key);

  @override
  State<MonitoringPage> createState() => _MonitoringPageState();
}

class _MonitoringPageState extends State<MonitoringPage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 270.0,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: const EdgeInsets.all(
                    15.0,
                  ),
                  color: AppColor.greenTextColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/pics/profile.png',
                        width: 75.0,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "Komronmirzo\nAbduvaliev",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 37.0,
                        width: 190.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: AppColor.redContainerColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Tasdiqlanmagan mijoz",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Icon(
                              FontAwesomeIcons.circleQuestion,
                              color: Colors.white,
                              size: 13.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "+998 12 345 67 89",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.user,
              customText: "Profil",
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.buromobelexperte,
              customText: "Dashboard",
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.gear,
              customText: "Sozlamalar",
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.clipboardList,
              customText: "Operatsiyalar tarixi",
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.receipt,
              customText: "Mening arizalarim",
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.chartLine,
              customText: "Valyuta kursi",
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.moneyBillTransfer,
              customText: "Pul o'tkazmalari",
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.lifeRing,
              customText: "Biz bilan bog'lanish",
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.shareFromSquare,
              customText: "Dasturni ulashing",
            ),
            DrawerList(
              customIcon: FontAwesomeIcons.rightFromBracket,
              customText: "Chiqish",
            ),
          ],
        ),
      ),
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
                    color: AppColor.greenTextColor,
                    icon: const Icon(
                      FontAwesomeIcons.barsStaggered,
                      size: 20.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _globalKey.currentState!.openDrawer();
                      });
                    },
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Monitoring",
                        style: CustomTextStyle.grey14bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      size: 27.0,
                      color: AppColor.greenTextColor,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MonitoringFilterPage(),
                          ),
                        );
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        child: Icon(
                          FontAwesomeIcons.arrowDown,
                          color: AppColor.greyTextColor,
                          size: 20.0,
                        ),
                      ),
                      const SizedBox(width: 7.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "6 809 922",
                            style: CustomTextStyle.bigGreenText,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Tushumlar",
                            style: CustomTextStyle.grey14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(width: 15.0),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        child: Icon(
                          FontAwesomeIcons.arrowUp,
                          color: AppColor.greyTextColor,
                          size: 20.0,
                        ),
                      ),
                      const SizedBox(width: 7.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "6 875 860",
                            style: CustomTextStyle.bigRedText,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Chiqimlar",
                            style: CustomTextStyle.grey14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Expanded(
                child: MonitoringListCard(
                  items: List<ListItem>.generate(
                    50,
                    (i) => i % 6 == 0
                        ? HeadingItem('Heading $i')
                        : MessageItem('Sender $i', 'Message body $i'),
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
