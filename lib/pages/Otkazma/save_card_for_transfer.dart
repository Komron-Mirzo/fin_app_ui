import 'package:fin_app_ui/widgets/card_save_transfer_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/colors.dart';
import '../../widgets/tolovlar_grid.dart';
import 'add_card_transfer_user.dart';
import '../Asosiy/my_cards.dart';

class SaveCardForTransfer extends StatefulWidget {
  const SaveCardForTransfer({Key? key}) : super(key: key);

  @override
  State<SaveCardForTransfer> createState() => _SaveCardForTransferState();
}

class _SaveCardForTransferState extends State<SaveCardForTransfer> {
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
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.009,
                child: Row(
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.22,
                    ),
                    Text(
                      "Qabul qiluvchilar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.greyTextColor,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.07,
                child: Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search_outlined,
                          color: AppColor.greyTextColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.15,
                bottom: MediaQuery.of(context).size.height * 0.01,
                left: 0.0,
                right: 0.0,
                child: SizedBox(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) =>
                        const CardTransferListCard(),
                    itemCount: 15,
                    shrinkWrap: true,
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AddCardTransferUserPage(),
                        ),
                      );
                    });
                  },
                  child: Material(
                    type: MaterialType.transparency,
                    elevation: 10.0,
                    color: Colors.transparent,
                    shadowColor: Colors.transparent,
                    child: TolovlarGridCard(
                      name: "Qabul\nqiluvchini\nqo'shish",
                      iconData: FontAwesomeIcons.userPlus,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
