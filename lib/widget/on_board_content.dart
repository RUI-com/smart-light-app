// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.desciption,
  });
  final String image, title, desciption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            image,
            height: 305,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: textcolor1,
                  fontSize: 35,
                  fontFamily: 'PoppinsBold',
                ),
              ),
              Text(
                desciption,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'RobotoRegular'),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        )
      ],
    );
  }
}
