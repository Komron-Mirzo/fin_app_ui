import 'package:fin_app_ui/styles/text_styles.dart';
import 'package:fin_app_ui/widgets/tolovlar_grid.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../main.dart';
import '../../styles/colors.dart';
import '../Asosiy/asosiy_page.dart';

class TolovSuccess extends StatefulWidget {
  TolovSuccess({
    Key? key,
  }) : super(key: key);

  @override
  State<TolovSuccess> createState() => _TolovSuccess();
}

class _TolovSuccess extends State<TolovSuccess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Padding(
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
                        "To'lovni amalga oshirish",
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
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    "assets/pics/money_transfer.png",
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Center(
                child: Text(
                  "To'lov muvaffaqiyatli yakunlandi",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                children: [
                  TolovlarGridCard(
                      name: "Avtoto'lov\nyaratish",
                      iconData: FontAwesomeIcons.recycle),
                  SizedBox(
                    width: 20.0,
                  ),
                  TolovlarGridCard(
                    name: "Chekni\nko'rish",
                    iconData: FontAwesomeIcons.eye,
                  ),
                ],
              ),
              Row(
                children: [
                  TolovlarGridCard(
                      name: "Tezkor\nto'lovlarga\nqo'shish",
                      iconData: FontAwesomeIcons.rankingStar),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => FinAppUi(),
                      ),
                    );
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
                      "Asosiy sahifaga",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
