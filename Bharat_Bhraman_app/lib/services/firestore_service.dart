// import 'package:bharat_bhraman_app/models/profile.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FirestoreService {
//   FirebaseFirestore _db = FirebaseFirestore.instance;

//   //Get Entries
//   Stream<List<Profile>> getEntries() {
//     return _db.collection('profiles').snapshots().map((snapshot) =>
//         snapshot.docs.map((doc) => Profile.fromJson(doc.data())).toList());
//   }

//   //Upsert
//   Future<void> setEntry(Profile entry, String uid) {
//     var options = SetOptions(merge: true);

//     return _db.collection('profile').doc(uid).set(entry.toMap(), options);
//   }

//   Stream<Profile> getEn(String uid) {
//     return _db
//         .collection('profiles')
//         .doc(uid)
//         .snapshots()
//         .map((doc) => Profile.fromJson(doc.data()));
//   }

//   //Delete
//   // Future<void> removeEntry(String entryId){
//   //   return _db
//   //     .collection('entries')
//   //     .doc(entryId)
//   //     .delete();
//   // }

// }
