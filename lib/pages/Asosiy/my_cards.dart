import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/colors.dart';
import 'add_card.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
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
                        "Kartalarim",
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
                child: Container(),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => AddCard(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              12.0,
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.fileCirclePlus,
                            color: AppColor.greenTextColor,
                            size: 30.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text(
                          "Karta\nqo'shish",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                          ),
                        ),
                        const SizedBox(
                          width: 23.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
