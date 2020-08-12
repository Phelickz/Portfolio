import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:simple_animations/simple_animations.dart';

import 'package:supercharged/supercharged.dart';

class Box extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  static final boxDecoration = BoxDecoration(
    // color: Colors.purple[900],
      // gradient: LinearGradient(colors: [
      //   backgroundBlack,
      //   Colors.transparent
      // ]),
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withAlpha(60),
            blurRadius: 5,
            offset: Offset(0, 8),
            spreadRadius: 2)
      ]);

  const Box({Key key, this.text, this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
      duration: 400.milliseconds,
      tween: 0.0.tweenTo(80.0),
      builder: (context, child, height) {
        return PlayAnimation<double>(
          duration: 4200.milliseconds,
          delay: 1000.milliseconds,
          tween: 2.0.tweenTo(600.0),
          builder: (context, child, width) {
            return Container(
              decoration: boxDecoration,
              width: width,
              height: height,
              child: isEnoughRoomForTypewriter(width)
                  ? TypewriterText(text, textStyle)
                  : Container(),
            );
          },
        );
      },
    );
  }

  bool isEnoughRoomForTypewriter(double width) => width > 40;
}

class TypewriterText extends StatelessWidget {
  static const TEXT_STYLE =
      TextStyle(letterSpacing: 5, fontSize: 20, fontWeight: FontWeight.w300);

  final String text;
  final TextStyle textStyle;

  TypewriterText(this.text, this.textStyle);

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<int>(
        duration: 2800.milliseconds,
        delay: 800.milliseconds,
        tween: 0.tweenTo(text.length),
        builder: (context, child, textLength) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(text.substring(0, textLength), style: textStyle ?? TEXT_STYLE),
              _blinkingCursor()
            ],
          );
        });
  }

  Widget _blinkingCursor() {
    return LoopAnimation<int>(
      duration: 600.milliseconds,
      tween: 0.tweenTo(1),
      builder: (context, child, oneOrZero) {
        return Opacity(
            opacity: oneOrZero == 1 ? 1.0 : 0.0,
            child: Text("_", style: TEXT_STYLE));
      },
    );
  }
}
