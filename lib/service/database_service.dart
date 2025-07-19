import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference clips = FirebaseFirestore.instance.collection(
    'clips',
  );

  Future<void> addClip(String title, String description) {
    return clips.add({
      'title': title,
      'description': description,
      'timestamp': Timestamp.now(),
    });
  }

  Stream<QuerySnapshot> getClipsStream() {
    final clipsStream = clips
        .orderBy('timestamp', descending: true)
        .snapshots();

    return clipsStream;
  }
}
