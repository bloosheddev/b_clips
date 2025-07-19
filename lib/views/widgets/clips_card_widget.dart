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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jadi gini......",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  "Update Peringatan Dini Cuaca Wilayah - Sumatera Selatan Tgl. 17 Juli 2025 pkl. 19:20 WIBPrakirawan - BMKG - Sumatera Selatan",
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
