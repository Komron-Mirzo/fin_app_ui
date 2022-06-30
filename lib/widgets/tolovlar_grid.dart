import 'package:fin_app_ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';

class TolovlarGridCard extends StatelessWidget {
  TolovlarGridCard({
    Key? key,
    this.iconData,
    required this.name,
    this.img,
  }) : super(key: key);

  String name;
  IconData? iconData;
  String? img;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 85.0,
      width: MediaQuery.of(context).size.width * 0.35,
      child: Row(
        children: [
          Container(
            height: 75.0,
            width: 75.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                12.0,
              ),
            ),
            child: Center(
              child: Icon(
                iconData,
                color: AppColor.greenTextColor,
              ),
            ),
          ),
          const SizedBox(
            width: 13.0,
          ),
          Text(
            name,
            style: CustomTextStyle.black12,
          ),
        ],
      ),
    );
  }
}

class TolovlarGridCard2 extends StatelessWidget {
  TolovlarGridCard2({
    Key? key,
    this.name,
    this.img,
  }) : super(key: key);

  late String? name;
  late String? img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      width: MediaQuery.of(context).size.width * 0.35,
      child: Row(
        children: [
          Container(
            height: 75.0,
            width: 75.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                12.0,
              ),
            ),
            child: Center(
              child: Image.asset(
                img!,
                width: 40,
              ),
            ),
          ),
          const SizedBox(
            width: 13.0,
          ),
          Text(
            name!,
            style: CustomTextStyle.black12,
          ),
        ],
      ),
    );
  }
}
