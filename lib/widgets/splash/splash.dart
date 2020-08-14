import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/core/services/res.dart';
import 'package:portfolio/theme/colors.dart';

class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp>
    with TickerProviderStateMixin {

  AnimationController _controller;

  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: Color(0xff000000),
        border: Border.all(width: 3, color: Color(0xffBC8181))),
    end: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Color(0xff000000),
        border: Border.all(width: 3, color: backgroundRed)),
  );

  initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBoxTransition(
        child: Container(
          width: McGyver.rsDoubleW(context, 22),
          height: McGyver.rsDoubleW(context, 22),
          child: Image.asset('group.png', fit: BoxFit.cover),
        ),
        position: DecorationPosition.background,
        decoration: decorationTween.animate(_controller),
      ),
    );
  }
}
