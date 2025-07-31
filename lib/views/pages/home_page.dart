import 'package:b_clips/service/database_service.dart';
import 'package:b_clips/views/widgets/clip_card_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirestoreService firestoreService = FirestoreService();

  Future _refresh() async {
    return setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _refresh;
    Future<bool> checkInternet() async {
      return await InternetConnection().hasInternetAccess;
    }

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                FutureBuilder<bool>(
                  future: checkInternet(),
                  builder: (context, internetSnapshot) {
                    if (internetSnapshot.hasError ||
                        !(internetSnapshot.data ?? false)) {
                      return Column(
                        children: [
                          Text('Unable to Load Clips!'),
                          Text(
                            'Try to Refresh or Check Your Internet Connection!',
                          ),

                          SizedBox(height: 750.0),
                        ],
                      );
                    }

                    return FutureBuilder<QuerySnapshot>(
                      future: firestoreService.getClipsStream(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return LinearProgressIndicator();
                        }
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}!');
                        }
                        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                          return Column(
                            children: [
                              Text('No clips found.'),
                              SizedBox(height: 750.0),
                            ],
                          );
                        }
                        return Column(
                          children: snapshot.data!.docs.map((doc) {
                            final data = doc.data() as Map<String, dynamic>;
                            return ClipCardWidget(
                              title: data['title'] ?? 'No Title',
                              description:
                                  data['description'] ?? 'No Description',
                            );
                          }).toList(),
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
