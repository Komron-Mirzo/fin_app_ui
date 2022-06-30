import 'dart:ui';

import 'package:fin_app_ui/pages/Monitoring/monitoring.dart';
import 'package:fin_app_ui/pages/Monitoring/monitoring_filter_page.dart';
import 'package:fin_app_ui/pages/Otkazma/otkazma.dart';
import 'package:fin_app_ui/pages/Tolovlar/tolovlar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pages/Asosiy/asosiy_page.dart';
import 'styles/colors.dart';

void main() {
  runApp(const FinAppUi());
}

class FinAppUi extends StatelessWidget {
  const FinAppUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    AsosiyPage(),
    TolovlarPage(),
    OtkazmaPage(),
    MonitoringPage(),
    AsosiyPage(),
  ];

  void _onTappedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.greenTextColor,
        backgroundColor: AppColor.backgroundColor,
        unselectedItemColor: AppColor.darkBlueColor,
        currentIndex: _selectedIndex,
        iconSize: 20.0,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        showUnselectedLabels: true,
        enableFeedback: false,
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
        ),
        onTap: _onTappedPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 25.0,
            ),
            label: "Asosiy",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.moneyBills,
              size: 20,
            ),
            label: "To'lovlar",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.arrowRightArrowLeft,
              size: 20.0,
            ),
            label: "O'tkazma",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.clockRotateLeft,
              size: 20.0,
            ),
            label: "Monitoring",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.commentDots,
              size: 20.0,
            ),
            label: "Asosiy",
          ),
        ],
      ),
    );
  }
}
