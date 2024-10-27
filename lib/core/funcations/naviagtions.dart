import 'package:flutter/material.dart';

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
