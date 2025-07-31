import 'package:flutter/material.dart';

class ClipCardWidget extends StatelessWidget {
  const ClipCardWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.all(Radius.circular(20.0)),
      child: Container(
        width: 350.0,
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Card(
          child: Padding(
            padding: EdgeInsetsGeometry.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  description,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 17.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
