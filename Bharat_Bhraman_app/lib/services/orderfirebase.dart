import 'package:bharat_bhraman_app/models/Destinationorder.dart';
import 'package:bharat_bhraman_app/models/destination_model.dart';
import 'package:bharat_bhraman_app/models/order.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class OrederFirebase {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  Future<void> setEntry(Order neworder, String uid, String transactionid) {
    var options = SetOptions(merge: true);

    return _db
        .collection('users')
        .doc(uid)
        .collection('handicraftorders')
        .doc(transactionid)
        .set(neworder.toMap(), options);
  }

  Future<void> adminsetEntry(Order neworder, String transactionid) {
    var options = SetOptions(merge: true);

    return _db
        .collection('handicraftorders')
        .doc(transactionid)
        .set(neworder.toMap(), options);
  }

  Future<void> setbarcode(
      Destinationorder newbarcode, String uid, String transactionid) {
    var options = SetOptions(merge: true);

    return _db
        .collection('users')
        .doc(uid)
        .collection('destinationorders')
        .doc(transactionid)
        .set(newbarcode.toMap(), options);
  }

  Future<void> adminbarcode(Destinationorder newbarcode, String transactionid) {
    var options = SetOptions(merge: true);

    return _db
        .collection('destinationorders')
        .doc(transactionid)
        .set(newbarcode.toMap(), options);
  }
}
