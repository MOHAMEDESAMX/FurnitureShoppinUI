import 'package:flutter/material.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Text("saved"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("saved page"),
            ElevatedButton(onPressed: () {}, child: const Text("data"))
          ],
        ),
      ),
    );
  }
}
