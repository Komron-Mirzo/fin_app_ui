import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../styles/colors.dart';
import '../styles/text_styles.dart';

class CardTransferListCard extends StatelessWidget {
  const CardTransferListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Falonchiyev Pistonchi".toUpperCase(),
                  style: CustomTextStyle.black14bold,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "5200 13** **** 5789",
                  style: CustomTextStyle.grey14,
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            GestureDetector(
              onTap: () {
                print('Icon is pressed');
              },
              child: Center(
                child: Icon(
                  FontAwesomeIcons.ellipsisVertical,
                  color: AppColor.greenTextColor,
                  size: 18.0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.012,
        ),
        const Divider(),
      ],
    );
  }
}
