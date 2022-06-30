import 'package:fin_app_ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/colors.dart';

class AddCardTransferUserPage extends StatefulWidget {
  const AddCardTransferUserPage({Key? key}) : super(key: key);

  @override
  State<AddCardTransferUserPage> createState() =>
      _AddCardTransferUserPageState();
}

class _AddCardTransferUserPageState extends State<AddCardTransferUserPage> {
  TextEditingController textEditingController = TextEditingController();
  bool _isTextEmpty = true;

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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.22,
                  ),
                  Text(
                    "Qabul qiluvchini qo'shish",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.greyTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  bottom: 10.0,
                  top: 5.0,
                ),
                height: 55.0,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "To'liq ism sharif",
                    hintStyle: CustomTextStyle.grey14,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  bottom: 10.0,
                  top: 5.0,
                ),
                height: 55.0,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: textEditingController,
                  onChanged: (value) => setState(() {
                    if (value.isNotEmpty) {
                      _isTextEmpty = false;
                    } else {
                      _isTextEmpty = true;
                    }
                  }),
                  decoration: InputDecoration(
                    hintText: "Karta raqami",
                    hintStyle: CustomTextStyle.grey14,
                    border: InputBorder.none,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 15.0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                    print("New user card added");
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: _isTextEmpty == true
                        ? AppColor.greyTextColor
                        : AppColor.greenTextColor,
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
                      "Davom ettirish",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
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
