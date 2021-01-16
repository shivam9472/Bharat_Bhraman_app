// import 'package:bharat_bhraman_app/services/firestore_service.dart';
// import 'package:flutter/material.dart';

// class EntryProvider with ChangeNotifier {
//   final firestoreService = FirestoreService();
//   String imageurl;
//   String name;
//   String address;
//   String pincode;
//   String city;
//   String state;
//   String phoneno;
//   String uid;

//   //Getters
//   String get Image => _date;
//   String get entry => _entry;
//   // Stream<List<Entry>> get entries => firestoreService.getEntries();

//   //Setters
//   set changeDate(DateTime date) {
//     _date = date;
//     notifyListeners();
//   }

//   set changeEntry(String entry) {
//     _entry = entry;
//     notifyListeners();
//   }

//   //Functions
//   // loadAll(Entry entry){
//   //   if (entry != null){
//   //     _date = DateTime.parse(entry.date);
//   //     _entry =entry.entry;
//   //     _entryId = entry.entryId;
//   //   } else {
//   //     _date = DateTime.now();
//   //     _entry = null;
//   //     _entryId = null;
//   //   }
//   // }

//   saveEntry() {
//     if (uid == null) {
//       //Add
//       var newEntry = Entry(
//           date: _date.toIso8601String(), entry: _entry, entryId: uuid.v1());
//       print(newEntry.entry);
//       firestoreService.setEntry(newEntry);
//     } else {
//       //Edit
//       var updatedEntry = Entry(
//           date: _date.toIso8601String(), entry: _entry, entryId: _entryId);
//       firestoreService.setEntry(updatedEntry);
//     }
//   }

//   // removeEntry(String entryId) {
//   //   firestoreService.removeEntry(entryId);
//   // }
// }
