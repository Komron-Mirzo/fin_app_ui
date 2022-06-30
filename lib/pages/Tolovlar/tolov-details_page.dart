import 'package:fin_app_ui/pages/Tolovlar/tolov_last.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../styles/colors.dart';

class TolovDetails extends StatefulWidget {
  final String img, name;

  final int index;

  const TolovDetails(this.index, this.img, this.name, {Key? key})
      : super(key: key);

  @override
  State<TolovDetails> createState() => _TolovDetailsState();
}

class _TolovDetailsState extends State<TolovDetails> {
  TextEditingController textEditingController = TextEditingController();
  bool _isTextEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
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
                  Expanded(
                    child: Center(
                      child: Text(
                        widget.name,
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
                  padding: const EdgeInsets.all(
                    25.0,
                  ),
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image.asset(
                    widget.img,
                    width: 170.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                height: 53.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Hisob / Login",
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      color: AppColor.greyTextColor,
                    ),
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      FontAwesomeIcons.user,
                      color: AppColor.greenTextColor,
                      size: 16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                height: 53.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
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
                  keyboardType: const TextInputType.numberWithOptions(),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    hintText: "To'lov summasi",
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      color: AppColor.greyTextColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Expanded(
                child: Container(),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TolovLast(
                          widget.index,
                          widget.name,
                          widget.img,
                        ),
                      ),
                    );
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
