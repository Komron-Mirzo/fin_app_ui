import 'package:fin_app_ui/pages/Tolovlar/tolov_success.dart';
import 'package:fin_app_ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../styles/colors.dart';

class TolovLast extends StatefulWidget {
  final int index;
  final String name;
  final String img;
  TolovLast(
    this.index,
    this.name,
    this.img, {
    Key? key,
  }) : super(key: key);

  @override
  State<TolovLast> createState() => _TolovLast();
}

class _TolovLast extends State<TolovLast> {
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
              Center(
                child: Container(
                  height: 200,
                  padding: EdgeInsets.all(20.0),
                  child: Image.asset(
                    widget.img,
                    width: 90,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text("Operator", style: CustomTextStyle.grey14bold),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    widget.name,
                    style: CustomTextStyle.black14bold,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text("Login/Hisob raqam", style: CustomTextStyle.grey14bold),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "Login",
                    style: CustomTextStyle.black14bold,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text("Komissiya", style: CustomTextStyle.grey14bold),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "0",
                    style: CustomTextStyle.black14bold,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text("Jami summa", style: CustomTextStyle.grey14bold),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "500 so'm",
                    style: CustomTextStyle.black14bold,
                  ),
                ],
              ),
              Expanded(
                child: Container(),
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
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
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
                      "To'lash",
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
