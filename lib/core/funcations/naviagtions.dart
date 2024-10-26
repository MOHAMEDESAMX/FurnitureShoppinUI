import 'package:flutter/material.dart';

void navRplacement(context, widget) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => widget));
}
