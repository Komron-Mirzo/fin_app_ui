import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../styles/colors.dart';

class GridCard extends StatelessWidget {
  GridCard({
    Key? key,
    required this.gridTitle,
    required this.customIcon,
  }) : super(key: key);

  IconData customIcon;
  String gridTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
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
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: AppColor.squareGreenColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Icon(
              customIcon,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                gridTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
              Row(
                  children: List.generate(
                4,
                (index) => const Icon(
                  FontAwesomeIcons.asterisk,
                  size: 10.0,
                ),
              )),
              const Text(
                "so'm",
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
