import 'package:fin_app_ui/pages/Tolovlar/tolov-details_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/colors.dart';
import '../../styles/text_styles.dart';
import '../../widgets/tolovlar_grid.dart';
import '../bell_notification.dart';

class TolovlarInside extends StatefulWidget {
  const TolovlarInside({Key? key}) : super(key: key);

  @override
  State<TolovlarInside> createState() => _TolovlarInsideState();
}

final List logosList = [
  {"name": "Apple", "img": "assets/logos/apple.png"},
  {"name": "Good Card", "img": "assets/logos/goodcard.png"},
  {"name": "Google", "img": "assets/logos/google.png"},
  {"name": "HP", "img": "assets/logos/hp.png"},
  {"name": "Huawei", "img": "assets/logos/huawei.png"},
  {"name": "LG", "img": "assets/logos/lg.png"},
  {"name": "LinkedIn", "img": "assets/logos/linkedin.png"},
  {"name": "Mestro", "img": "assets/logos/maestro.png"},
  {"name": "Master Card", "img": "assets/logos/mastercard.png"},
  {"name": "NASA", "img": "assets/logos/nasa.png"},
  {"name": "Philips", "img": "assets/logos/philips.png"},
  {"name": "Samsung", "img": "assets/logos/samsung.png"},
  {"name": "Snap Chat", "img": "assets/logos/snapchat.png"},
  {"name": "Tik Tok", "img": "assets/logos/tiktok.png"},
  {"name": "Visa", "img": "assets/logos/visa.png"},
];

class _TolovlarInsideState extends State<TolovlarInside> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    color: AppColor.greenTextColor,
                    icon: const Icon(
                      FontAwesomeIcons.chevronLeft,
                      size: 20.0,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Servis nomi",
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            color: AppColor.greyTextColor,
                          ),
                          suffixIcon: Icon(Icons.search_outlined,
                              color: AppColor.greyTextColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.bell,
                      size: 20.0,
                      color: AppColor.bellIconColor,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const BellNotification(),
                          ),
                        );
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Barchasi",
                  style: CustomTextStyle.grey12bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Barcha servislar",
                  style: CustomTextStyle.grey12bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25.0,
                    crossAxisSpacing: 10.0,
                    mainAxisExtent: 75.0,
                  ),
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TolovDetails(
                              index,
                              logosList[index]["img"],
                              logosList[index]["name"],
                            ),
                          ),
                        );
                      });
                    },
                    child: TolovlarGridCard2(
                      img: logosList[index]["img"],
                      name: logosList[index]["name"],
                    ),
                  ),
                  itemCount: logosList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
