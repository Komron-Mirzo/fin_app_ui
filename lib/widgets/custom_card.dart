import 'package:flutter/material.dart';

import '../styles/colors.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    Key? key,
    required this.customImage,
    required this.customTitle,
    required this.customDescription,
  }) : super(key: key);

  String customImage;
  String customTitle;
  String customDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 90.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0,
      ),
      child: Row(
        children: [
          Image.asset(
            customImage,
            width: 80.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                customTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
              Text(
                customDescription,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 10.5,
                  color: AppColor.greyTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCard2 extends StatelessWidget {
  CustomCard2({
    Key? key,
    required this.customImage,
    required this.customMoney,
    required this.customSell,
    required this.customBuy,
  }) : super(key: key);

  String customImage;
  String customMoney;
  double customSell;
  double customBuy;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 90.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            customImage,
            width: 55.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Valyuta",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    customMoney,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Sotib olish",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    customBuy.toString(),
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sotish",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    customSell.toString(),
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
