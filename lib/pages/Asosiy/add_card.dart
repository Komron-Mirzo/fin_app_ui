import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../styles/colors.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  bool _switchChange = false;

  void _onSwitchChange(bool value) {
    setState(() {
      _switchChange = value;
      if (_switchChange == false) {
        _switchChange = false;
      } else {
        _switchChange = true;
      }
    });
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
                        "Karta qo'shish",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.greyTextColor,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Yopish",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.greyTextColor,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.24,
                child: ListView(
                  children: [
                    CarouselSlider(
                      items: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.24,
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 10.0,
                          ),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                colorFilter: ColorFilter.mode(
                                  Color(0xFF0D7368),
                                  BlendMode.overlay,
                                ),
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/pics/card_background.webp',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.4),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0,
                                  offset: const Offset(0, 0),
                                ),
                              ]),
                          child: Container(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.24,
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 10.0,
                          ),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                colorFilter: ColorFilter.mode(
                                  Color(0xFF0D7368),
                                  BlendMode.overlay,
                                ),
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/pics/card_background1.jpg',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.4),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0,
                                  offset: const Offset(0, 0),
                                ),
                              ]),
                          child: Container(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.24,
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 10.0,
                          ),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                colorFilter: ColorFilter.mode(
                                  Color(0xFF0D7368),
                                  BlendMode.overlay,
                                ),
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/pics/card_background2.jpg',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.4),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0,
                                  offset: const Offset(0, 0),
                                ),
                              ]),
                          child: Container(),
                        ),
                      ],
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.24,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Karta raqami",
                  style: TextStyle(
                    color: AppColor.greyTextColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
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
                    hintText: "Karta raqami",
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
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Muddati",
                          style: TextStyle(
                            color: AppColor.greyTextColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.22,
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
                          keyboardType: const TextInputType.numberWithOptions(),
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
                            hintText: "OO/YY",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: AppColor.greyTextColor,
                            ),
                            fillColor: Colors.white,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Karta nomi",
                          style: TextStyle(
                            color: AppColor.greyTextColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.58,
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
                            hintText: "Karta nomi",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: AppColor.greyTextColor,
                            ),
                            fillColor: Colors.white,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  const Text(
                    "Asosiy karta",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(width: 10.0),
                  ),
                  Switch(
                    value: _switchChange,
                    onChanged: (bool value) {
                      _onSwitchChange(value);
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                height: 90.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/pics/mancard.png',
                      width: 75.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kartaga buyurtma",
                          style: TextStyle(
                            color: AppColor.greenTextColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "BIr necha klik va bank kartasi\nsizning qo'ltig'ingizda!",
                          style: TextStyle(
                            color: AppColor.greyTextColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: AppColor.greyTextColor,
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
                    "Karta qo'shish",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
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
