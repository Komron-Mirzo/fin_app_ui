import 'package:fin_app_ui/widgets/drawer_list_card.dart';
import 'package:fin_app_ui/widgets/grid_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../styles/colors.dart';
import '../../widgets/custom_card.dart';
import '../bell_notification.dart';
import 'my_cards.dart';

class AsosiyPage extends StatefulWidget {
  AsosiyPage({Key? key}) : super(key: key);

  @override
  State<AsosiyPage> createState() => _AsosiyPageState();
}

bool? _isHidden = true;

class _AsosiyPageState extends State<AsosiyPage> {
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
                    child: Container(),
                  ),
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
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.22,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      AppColor.secGreenColor,
                      AppColor.firstGreenColor,
                    ]),
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.4),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                        offset: const Offset(0, 5),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Jami balans",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                      GestureDetector(
                        child: _isHidden == true
                            ? Row(
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.eye,
                                    color: Colors.white,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "5 661 000.02 so'm",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.eye,
                                    color: Colors.white,
                                    size: 16.0,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Row(
                                    children: List.generate(
                                      4,
                                      (index) => const Icon(
                                        FontAwesomeIcons.asterisk,
                                        color: Colors.white,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        onTap: () {
                          setState(() {
                            _isHidden = false;
                          });
                        },
                        onTapCancel: () {
                          setState(() {
                            _isHidden = true;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const MyCards()),
                              );
                            },
                            child: const Icon(
                              FontAwesomeIcons.circleChevronRight,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const MyCards()),
                              );
                            },
                            child: const Text(
                              'Kartalarga o\'tish',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          const Icon(
                            FontAwesomeIcons.arrowsRotate,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.01,
                decoration: BoxDecoration(
                  color: AppColor.greenTextColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: Container(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.021,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GridCard(
                            customIcon: FontAwesomeIcons.handHoldingDollar,
                            gridTitle: "Keshbek",
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          GridCard(
                            customIcon: FontAwesomeIcons.moneyCheckDollar,
                            gridTitle: "Jamg'arma",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GridCard(
                            customIcon: FontAwesomeIcons.coins,
                            gridTitle: "Omonatlar",
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          GridCard(
                            customIcon: FontAwesomeIcons.creditCard,
                            gridTitle: "Kreditlar",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        height: 100.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            CustomCard(
                              customImage: 'assets/pics/car_vector.webp',
                              customTitle: 'Mening avtomobilim',
                              customDescription:
                                  "Jarimalarni bepul va o'z \n vaqtida bilib oling",
                            ),
                            SizedBox(width: 15.0),
                            CustomCard(
                              customImage: 'assets/pics/identification.webp',
                              customTitle: "Identifikatsiya",
                              customDescription:
                                  "Masofadan turib tez va oson \n identifikatsiyadan o'ting",
                            ),
                            SizedBox(width: 15.0),
                            CustomCard(
                              customImage: 'assets/pics/paypal.jpg',
                              customTitle: "Paypal Pay",
                              customDescription:
                                  "Smartfon orqali kontaktsiz \n to'lov",
                            ),
                            SizedBox(width: 15.0),
                            CustomCard(
                              customImage: 'assets/pics/exchange.webp',
                              customTitle: "Konversiya",
                              customDescription:
                                  "Valyutani foydali kurs bilan \n konversiya qiling",
                            ),
                            SizedBox(width: 15.0),
                            CustomCard(
                              customImage: 'assets/pics/dashboard.webp',
                              customTitle: "Dashboard",
                              customDescription:
                                  "Kommunal xizmatlar, internet \n va boshqa hisob raqamlar",
                            ),
                            SizedBox(width: 15.0),
                            CustomCard(
                              customImage: 'assets/pics/money_tree.webp',
                              customTitle: "Omonat qo'yish",
                              customDescription:
                                  "Omonatingizni ushbu dasturda \n ochtiring",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Tezkor to'lovlar",
                            style: TextStyle(
                              color: AppColor.greyTextColor,
                              fontSize: 12.0,
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Text(
                            "Barchasi",
                            style: TextStyle(
                              color: AppColor.greyTextColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 90.0,
                            height: 90.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                              color: Colors.white,
                            ),
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: AppColor.greyTextColor,
                              size: 20.0,
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Valyutalar",
                            style: TextStyle(
                              color: AppColor.greyTextColor,
                              fontSize: 12.0,
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Text(
                            "Barchasi",
                            style: TextStyle(
                              color: AppColor.greyTextColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        height: 100.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            CustomCard2(
                                customImage: 'assets/pics/usa.png',
                                customMoney: "USD",
                                customBuy: 10956.0,
                                customSell: 11000.0),
                            const SizedBox(width: 15.0),
                            CustomCard2(
                                customImage: 'assets/pics/euro.png',
                                customMoney: "EUR",
                                customBuy: 11000.0,
                                customSell: 12000.0),
                            const SizedBox(width: 15.0),
                            CustomCard2(
                                customImage: 'assets/pics/japan.png',
                                customMoney: "JPY",
                                customBuy: 70.0,
                                customSell: 90.0),
                            const SizedBox(width: 15.0),
                            CustomCard2(
                                customImage: 'assets/pics/sweden.png',
                                customMoney: "CHF",
                                customBuy: 11000.0,
                                customSell: 11800.0),
                            const SizedBox(width: 15.0),
                            CustomCard2(
                                customImage: 'assets/pics/funt.png',
                                customMoney: "GBP",
                                customBuy: 13000.0,
                                customSell: 14000.0),
                          ],
                        ),
                      ),
                    ],
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
