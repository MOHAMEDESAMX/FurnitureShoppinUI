import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/features/boarding/presentation/view/boarding_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoardingView(),
    );
  }
}
