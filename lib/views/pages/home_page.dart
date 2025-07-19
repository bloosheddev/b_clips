import 'package:b_clips/service/database_service.dart';
import 'package:b_clips/views/widgets/clips_card_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              ...List.generate(1, (index) {
                return ClipsCardWidget();
              }),
              // StreamBuilder<QuerySnapshot>(
              //   stream: FirestoreService.getClipsStream(),
              //   builder: (context, snapshot) {
              //     if (snapshot.hasData) {
              //       List clipList = snapshot.data!.docs;
              //     }
              //   },
              // ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
