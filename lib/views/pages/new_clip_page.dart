import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewClipPage extends StatelessWidget {
  const NewClipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Center(
        child: Column(
          children: [
            TextField(
              maxLength: 30,
              decoration: InputDecoration(
                hintText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              maxLength: 150,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Description",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            FilledButton(
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(5.0)),
                ),
                minimumSize: Size(double.infinity, 45),
              ),
              onPressed: () {},
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
