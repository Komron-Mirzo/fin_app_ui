import 'package:fin_app_ui/pages/Tolovlar/tolovlar2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/drawer_list_card.dart';
import '../../widgets/tolovlar_grid.dart';
import '../bell_notification.dart';

class TolovlarPage extends StatefulWidget {
  const TolovlarPage({Key? key}) : super(key: key);

  @override
  State<TolovlarPage> createState() => _TolovlarPageState();
}

final List tolovlarList = [
  {
    "name": "Mobil operatorlar",
    "icon": FontAwesomeIcons.mobileScreen,
  },
  {
    "name": "Internet\nProvayderlar",
    "icon": FontAwesomeIcons.globe,
  },
  {
    "name": "Uy telefoni",
    "icon": FontAwesomeIcons.phone,
  },
  {
    "name": "Kommunal\nxizmatlar",
    "icon": FontAwesomeIcons.house,
  },
  {
    "name": "Transport",
    "icon": FontAwesomeIcons.car,
  },
  {
    "name": "Televidenie va\n onlayn kuzatuv",
    "icon": FontAwesomeIcons.tv,
  },
  {
    "name": "Kreditlarni\nso'ndirish",
    "icon": FontAwesomeIcons.creditCard,
  },
  {
    "name": "Davlat xizmatlari",
    "icon": FontAwesomeIcons.building,
  },
  {
    "name": "E'lonlar va\nreklama",
    "icon": FontAwesomeIcons.noteSticky,
  },
  {
    "name": "Internet do'konlar",
    "icon": FontAwesomeIcons.cartShopping,
  },
  {
    "name": "Xizmatlar",
    "icon": FontAwesomeIcons.servicestack,
  },
  {
    "name": "Xayriya",
    "icon": FontAwesomeIcons.handHoldingHeart,
  },
  {
    "name": "Onlayn xizmatlar",
    "icon": FontAwesomeIcons.clipboardUser,
  },
  {
    "name": "Ta'lim",
    "icon": FontAwesomeIcons.book,
  },
  {
    "name": "Sport",
    "icon": FontAwesomeIcons.golfBallTee,
  },
  {
    "name": "Bolalar",
    "icon": FontAwesomeIcons.children,
  },
  {
    "name": "Oziq-ovqat",
    "icon": FontAwesomeIcons.bowlFood,
  },
];

class _TolovlarPageState extends State<TolovlarPage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Servis nomi",
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            color: AppColor.greyTextColor,
                          ),
                          suffixIcon: Icon(Icons.search_outlined,
                              color: AppColor.greyTextColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.bell,
                      size: 20.0,
                      color: AppColor.bellIconColor,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const BellNotification(),
                          ),
                        );
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Barchasi",
                  style: CustomTextStyle.grey12bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Barcha servislar",
                  style: CustomTextStyle.grey12bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.0,
                    crossAxisSpacing: 15.0,
                    mainAxisExtent: 75.0,
                  ),
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => TolovlarInside(),
                          ),
                        );
                      });
                    },
                    child: TolovlarGridCard(
                      iconData: tolovlarList[index]["icon"],
                      name: tolovlarList[index]["name"],
                    ),
                  ),
                  itemCount: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
