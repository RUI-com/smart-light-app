// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details_screen.dart';
import 'package:flutter_application_1/theme/colors.dart';
// import 'package:flutter_application_1/widget/bottom_nab_bar.dart';
import 'package:flutter_application_1/widget/smart_device_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNabBar(),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [gradinetcolor1, gradinetcolor2],
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(96, 158, 158, 158),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(11),
                    child: SvgPicture.asset(
                      "assets/home/menu.svg",
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(96, 158, 158, 158),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(11),
                    child: SvgPicture.asset(
                      "assets/home/profile.svg",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Smart Devices',
                    style: TextStyle(
                        fontSize: 35,
                        color: textcolor2,
                        fontFamily: 'RobotoRegular'),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmartDeviceCard(
                      title: 'Smart\nLight',
                      image: "assets/home/smart light.svg",
                      size: 0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmartDeviceCard(
                      title: 'Smart\nAC',
                      image: "assets/home/smart ac.svg",
                      size: 50,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmartDeviceCard(
                      title: 'Smart\nTV',
                      image: "assets/home/smart tv.svg",
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmartDeviceCard(
                      title: 'Smart\nFan',
                      image: "assets/home/smart fan.svg",
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 60,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: SvgPicture.asset(
                    "assets/home/home.svg",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen()));
                  },
                  child: Container(
                    width: 80,
                    height: 60,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      // color: backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      // border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: SvgPicture.asset(
                      "assets/home/dool.svg",
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
