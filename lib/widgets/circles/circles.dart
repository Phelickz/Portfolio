import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/core/services/res.dart';

class Circles extends StatefulWidget {
  @override
  _CirclesState createState() => _CirclesState();
}

class _CirclesState extends State<Circles> with TickerProviderStateMixin {
  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 2,
  );

  AnimationController _controller;

  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Timer(Duration(seconds: 4), () => _controller.reverse());
      } else if (status == AnimationStatus.dismissed) {
        Timer(Duration(seconds: 4), () => _controller.forward());
      }
    });

    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: turnsTween.animate(_controller),
      child: Container(
        width: McGyver.rsDoubleW(context, 40),
        height: McGyver.rsDoubleH(context, 60),
        child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            'circles.png',
          ),
        ),
      ),
    );
  }
}
