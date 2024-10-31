import 'package:flutter/material.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("saved"),
      ),
      body: const Center(
        child: Text("saved page"),
      ),
    );
  }
}
