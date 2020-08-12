import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/services/config.dart';
import 'package:portfolio/core/services/res.dart';
import 'package:portfolio/core/services/res2.dart';
import 'dart:html' as html;

import 'package:portfolio/core/services/utils.dart';
import 'package:portfolio/theme/colors.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      Container(
        width: McGyver.rsDoubleW(context, 30),
        height: McGyver.rsDoubleH(context, 31),
        decoration: BoxDecoration(
            color: Color(0xff1C1A1A),
            border: Border.all(width: 3, color: Color(0xff2f2727))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.0, top: 8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: FlatButton.icon(
                  label: Text(''),
                  onPressed: () =>
                      html.window.open(Constants.VIDEO, 'Phelickz'),
                  icon: Container(
                      width: McGyver.rsDoubleW(context, 4),
                      height: McGyver.rsDoubleH(context, 4),
                      child: Image.asset(Assets.github)),
                ),
              ),
            ),
            SizedBox(height: McGyver.rsDoubleH(context, 4)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: McGyver.rsDoubleW(context, 3),
              ),
              child: Text(
                'Video Chat App',
                style: GoogleFonts.montserrat(
                    color: Color(0xffc4c4c4),
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig().textSize(context, 1.8)),
              ),
            ),
            SizedBox(height: McGyver.rsDoubleH(context, 3)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: McGyver.rsDoubleW(context, 3),
              ),
              child: Text(
                'A mobile application for video calling and chatting with people',
                style: GoogleFonts.montserrat(
                    color: Color(0xffc4c4c4),
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig().textSize(context, 1.4)),
              ),
            ),
            SizedBox(height: McGyver.rsDoubleH(context, 6)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: McGyver.rsDoubleW(context, 3),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Tools: Flutter/Dart',
                  style: GoogleFonts.montserrat(
                      color: Color(0xffc4c4c4),
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig().textSize(context, 1.4)),
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        width: McGyver.rsDoubleW(context, 30),
        height: McGyver.rsDoubleH(context, 31),
        decoration: BoxDecoration(
            // color: Color(0xff1C1A1A),
            border: Border.all(width: 3, color: Color(0xff2f2727))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.0, top: 8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: FlatButton.icon(
                  label: Text(''),
                  onPressed: () =>
                      html.window.open(Constants.VIDEO, 'Phelickz'),
                  icon: Container(
                      width: McGyver.rsDoubleW(context, 4),
                      height: McGyver.rsDoubleH(context, 4),
                      child: Image.asset(Assets.github)),
                ),
              ),
            ),
            SizedBox(height: McGyver.rsDoubleH(context, 4)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: McGyver.rsDoubleW(context, 3),
              ),
              child: Text(
                'Video Chat App',
                style: GoogleFonts.montserrat(
                    color: Color(0xffc4c4c4),
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig().textSize(context, 1.8)),
              ),
            ),
            SizedBox(height: McGyver.rsDoubleH(context, 3)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: McGyver.rsDoubleW(context, 3),
              ),
              child: Text(
                'A mobile application for video calling and chatting with people',
                style: GoogleFonts.montserrat(
                    color: Color(0xffc4c4c4),
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig().textSize(context, 1.4)),
              ),
            ),
            SizedBox(height: McGyver.rsDoubleH(context, 3)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: McGyver.rsDoubleW(context, 3),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Tools: Flutter/Dart',
                  style: GoogleFonts.montserrat(
                      color: Color(0xffc4c4c4),
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig().textSize(context, 1.4)),
                ),
              ),
            )
          ],
        ),
      ),
    ];

    return Column(children: [
      Container(
        color: Colors.blue,
        height: McGyver.rsDoubleH(context, 50),
        child: CarouselSlider(
          items: items,
          options: CarouselOptions(
              height: McGyver.rsDoubleH(context, 40),
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.map((url) {
          int index = items.indexOf(url);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? backgroundRed : headerTextColor),
          );
        }).toList(),
      ),
    ]);
  }
}
