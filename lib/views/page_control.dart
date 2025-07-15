import 'package:flutter/material.dart';

class PageControl extends StatelessWidget {
  const PageControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: Center(child: Text("Text"))),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.note), label: "Home"),
          NavigationDestination(icon: Icon(Icons.add), label: "New Note"),
        ],
        selectedIndex: 1,
      ),
    );
  }
}
