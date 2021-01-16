import 'package:bharat_bhraman_app/models/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Profilefirebase {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  Future<void> setEntry(Profile entry, String uid) {
    var options = SetOptions(merge: true);

    return _db.collection('profile').doc(uid).set(entry.toMap(), options);
  }
}
