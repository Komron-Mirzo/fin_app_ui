import 'package:flutter/material.dart';
import '../../styles/colors.dart';

class FilterContainerCard extends StatelessWidget {
  const FilterContainerCard({
    Key? key,
    required this.tappedIndex,
    required this.index,
    required this.name,
  }) : super(key: key);

  final int? tappedIndex;
  final int? index;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.275,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: tappedIndex == index ? AppColor.greenTextColor : Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 7.0,
            spreadRadius: 1.0,
            color: AppColor.greyTextColor.withOpacity(0.5),
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: tappedIndex == index ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
