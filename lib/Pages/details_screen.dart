// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, no_leading_underscores_for_local_variables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_screen.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  double _volumeValue = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(36, 255, 255, 255),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -30,
              bottom: 100,
              left: 20,
              child: Container(
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "7:00\nAM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14,
                          fontFamily: 'RobotoBlack'),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "9:00\nPM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14,
                          fontFamily: 'RobotoBlack'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -30,
              bottom: 100,
              right: 20,
              child: Container(
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "25 * C",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 10,
                          fontFamily: 'RobotoBlack'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset(
                      "assets/details/tamperore.svg",
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -70,
              left: 60,
              child: Stack(
                children: [
                  Container(
                    width: 230,
                    child: Image.asset(
                      "assets/details/lamp-details.png",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          width: 100,
                          height: 100,
                          padding: EdgeInsets.all(18),
                          color: Color.fromARGB(43, 255, 255, 255),
                          child: SvgPicture.asset(
                            "assets/details/off.svg",
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // 40%
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 300,
                      height: 250,
                      child: SfRadialGauge(axes: <RadialAxis>[
                        RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            startAngle: 0,
                            centerY: 0.2,
                            endAngle: 180,
                            showLabels: false,
                            showTicks: false,
                            radiusFactor: 0.8,
                            axisLineStyle: AxisLineStyle(
                                cornerStyle: CornerStyle.bothCurve,
                                color: Color.fromARGB(255, 98, 94, 112),
                                thickness: 15),
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: _volumeValue,
                                cornerStyle: CornerStyle.bothCurve,
                                width: 15,
                                sizeUnit: GaugeSizeUnit.logicalPixel,
                                gradient: const SweepGradient(colors: <Color>[
                                  Color(0xFFD3BE6D),
                                  Color(0xFFD3BE6D)
                                ], stops: <double>[
                                  0.25,
                                  0.80
                                ]),
                              ),
                              MarkerPointer(
                                value: _volumeValue,
                                enableDragging: true,
                                onValueChanged: onVolumeChanged,
                                markerHeight: 34,
                                markerWidth: 34,
                                markerType: MarkerType.circle,
                                color: textcolor1,
                              )
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  angle: -10,
                                  horizontalAlignment: GaugeAlignment.near,
                                  axisValue: 0,
                                  positionFactor: 0.8,
                                  widget: Text(
                                    'Low',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'RobotoBlack',
                                      color: Colors.grey,
                                    ),
                                  )),
                              GaugeAnnotation(
                                  angle: 190,
                                  axisValue: 100,
                                  positionFactor: 0.9,
                                  widget: Text(
                                    'High',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'RobotoBlack',
                                      color: Colors.grey,
                                    ),
                                  )),
                              GaugeAnnotation(
                                angle: 90,
                                axisValue: 100,
                                verticalAlignment: GaugeAlignment.near,
                                positionFactor: 1.1,
                                widget: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      _volumeValue.ceil().toString() + '%',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'RobotoBlack',
                                        color: Color(0xFFD3BE6D),
                                      ),
                                    ),
                                    Text(
                                      'Brightness',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'RobotoBlack',
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ])
                      ]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  void onVolumeChanged(double value) {
    setState(() {
      _volumeValue = value;
    });
  }
}
