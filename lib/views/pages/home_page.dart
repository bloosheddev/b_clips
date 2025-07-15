import 'package:b_clips/views/widgets/clips_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              ...List.generate(10, (index) {
                return ClipsCardWidget();
              }),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
