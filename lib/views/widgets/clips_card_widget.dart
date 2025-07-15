import 'package:flutter/material.dart';

class ClipsCardWidget extends StatelessWidget {
  const ClipsCardWidget({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "HIIIIi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: 5.0),
                Text(" IpsumLorem IpsumLorem IpsumLorem Ipsum"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
