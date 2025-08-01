import 'package:b_clips/service/database_service.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NewClipPage extends StatefulWidget {
  const NewClipPage({super.key});

  @override
  State<NewClipPage> createState() => _NewClipPageState();
}

class _NewClipPageState extends State<NewClipPage> {
  final FirestoreService firestoreService = FirestoreService();

  final TextEditingController titleTextController = TextEditingController();
  final TextEditingController descTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Center(
        child: Column(
          children: [
            TextField(
              textCapitalization: TextCapitalization.sentences,
              maxLength: 30,
              decoration: InputDecoration(
                hintText: "Title",
                border: OutlineInputBorder(),
              ),
              controller: titleTextController,
            ),
            SizedBox(height: 20.0),
            TextField(
              textCapitalization: TextCapitalization.sentences,
              maxLength: 150,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Description",
                border: OutlineInputBorder(),
              ),
              controller: descTextController,
            ),
            SizedBox(height: 20.0),
            FilledButton(
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(5.0)),
                ),
                minimumSize: Size(double.infinity, 45),
              ),
              onPressed: () async {
                bool res = await InternetConnection().hasInternetAccess;

                if (titleTextController.text == "" &&
                    descTextController.text == "") {
                  return;
                }
                if (res == false) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds: 3),
                      content: Text("Error: No Internet Available!"),
                    ),
                  );
                  return;
                }
                firestoreService.addClip(
                  titleTextController.text,
                  descTextController.text,
                );
                titleTextController.clear();
                descTextController.clear();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 3),
                    content: Text("Clip Have Been Posted!"),
                  ),
                );
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
