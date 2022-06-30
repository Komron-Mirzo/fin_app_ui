import 'package:fin_app_ui/pages/Otkazma/save_card_for_transfer.dart';
import 'package:fin_app_ui/pages/Tolovlar/tolov_success.dart';
import 'package:fin_app_ui/styles/text_styles.dart';
import 'package:fin_app_ui/widgets/tolovlar_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/colors.dart';
import '../../widgets/drawer_list_card.dart';
import '../Asosiy/my_cards.dart';
import '../bell_notification.dart';

class OtkazmaPage extends StatefulWidget {
  const OtkazmaPage({Key? key}) : super(key: key);

  @override
  State<OtkazmaPage> createState() => _OtkazmaPageState();
}

class _OtkazmaPageState extends State<OtkazmaPage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  TextEditingController textEditingController = TextEditingController();
  bool _isTextEmpty = true;

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
                        "Kartadan kartaga pul o'tkazish",
                        style: CustomTextStyle.grey14bold,
                      ),
                    ),
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
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
                child: TextField(
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: false,
                  ),
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLength: 16,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    counterText: '',
                    counterStyle: const TextStyle(
                      height: double.minPositive,
                    ),
                    hintText: "Qabul qiluvchi karta raqami",
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: AppColor.greyTextColor,
                    ),
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      FontAwesomeIcons.qrcode,
                      size: 20.0,
                      color: AppColor.greenTextColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Center(
                child: Text(
                  "O'tkazma summasi",
                  style: CustomTextStyle.black12bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Align(
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: false,
                  ),
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLength: 16,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  controller: textEditingController,
                  onChanged: (value) => setState(() {
                    if (value.isNotEmpty) {
                      _isTextEmpty = false;
                    } else {
                      _isTextEmpty = true;
                    }
                  }),
                  decoration: InputDecoration(
                    counterText: '',
                    counterStyle: const TextStyle(
                      height: double.minPositive,
                    ),
                    hintText: "0 so'm",
                    hintStyle: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: AppColor.greyTextColor,
                    ),
                    fillColor: Colors.white,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => MyCards(),
                          ),
                        );
                      }
                    },
                    child: TolovlarGridCard(
                      name: "Mening\nkartamga\no'tkazish",
                      iconData: FontAwesomeIcons.moneyBillTransfer,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 15.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SaveCardForTransfer(),
                          ),
                        );
                      });
                    },
                    child: TolovlarGridCard(
                      name: "Qabul\nqiluvchini\nqo'shish",
                      iconData: FontAwesomeIcons.user,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.24,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Color(0xFF0D7368),
                        BlendMode.overlay,
                      ),
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/pics/reen_back.jpg',
                      ),
                    ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/pics/logo.png',
                        width: 50.0,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "Western Universal Bank",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                        text: const TextSpan(
                          text: "5 661 000",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: ".02 so'm",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: const [
                          Text(
                            "8600 12** **** 7890",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(width: 10.0),
                          ),
                          Text(
                            "04/24",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(width: 10.0),
                          ),
                          Text(
                            "Asosiy karta",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => TolovSuccess(),
                      ),
                    );
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: _isTextEmpty == true
                        ? AppColor.greenTextColor
                        : AppColor.greenTextColor,
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
                      "Davom ettirish",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Center(
                child: Text(
                    "Davom ettirish tugmasini bosish orqali siz\noferta shartlariga o'z roziligingizni bildirasiz"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
