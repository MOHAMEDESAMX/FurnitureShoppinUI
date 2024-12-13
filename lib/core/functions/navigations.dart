import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

void navRplacement(context, widget) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => widget));
}

void navpush(context, widget) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

void navpewScreen(context, widget) {
  PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: widget,
    withNavBar: false,
    pageTransitionAnimation: PageTransitionAnimation.fade,
  );
}

void mySnakeBar(context, String text, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    duration: const Duration(seconds: 3),
    backgroundColor: color,
  ));
}
