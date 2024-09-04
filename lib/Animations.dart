import 'dart:async';

import 'package:flutter/material.dart';


class DrawerAnimation extends StatefulWidget {
  const DrawerAnimation({super.key});

  @override
  State<DrawerAnimation> createState() => _DrawerAnimationState();
}

class _DrawerAnimationState extends State<DrawerAnimation>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    const Color(0xff171B70),
    const Color(0xff410D75),
    const Color(0xff0322340),
    const Color(0xff050340),
    const Color(0xff2C0340),
  ];
  List<Alignment> aligmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = const Color(0xff092646);
  Color topColor = const Color(0xff410D75);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 0), () {
      setState(() {
        bottomColor = const Color(0xff33267c);
      });
    });
  }

  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      onEnd: () {
        setState(() {
          index = index + 1;
          bottomColor = colorList[index % colorList.length];
          topColor = colorList[(index + 1) % colorList.length];
        });
      },
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: begin, end: end, colors: [bottomColor, topColor])),
    );
  }
}