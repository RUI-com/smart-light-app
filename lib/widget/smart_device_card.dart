// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmartDeviceCard extends StatefulWidget {
  final String title, image;
  final double size;
  const SmartDeviceCard(
      {super.key,
      required this.title,
      required this.image,
      required this.size});

  @override
  State<SmartDeviceCard> createState() => _SmartDeviceCardState();
}

class _SmartDeviceCardState extends State<SmartDeviceCard> {
  bool isOn = true;

  final TextStyle _onTextStyle = TextStyle(
    color: cardColor1,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  final TextStyle _offTextStyle = TextStyle(
    color: cardColor2,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: 140,
      decoration: BoxDecoration(
        color: isOn ? cardColor1 : cardColor2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: widget.size,
          ),
          SvgPicture.asset(
            widget.image,
            width: 50,
            color: isOn ? null : switchColor2,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.title,
                style: isOn ? _offTextStyle : _onTextStyle,
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Switch(
                  value: isOn,
                  onChanged: (value) {
                    setState(() {
                      isOn = value;
                    });
                  },
                  activeTrackColor: const Color.fromARGB(131, 158, 158, 158),
                  inactiveTrackColor: const Color.fromARGB(131, 158, 158, 158),
                  activeColor: isOn ? cardColor1 : switchColor1,
                  inactiveThumbColor: switchColor1,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
