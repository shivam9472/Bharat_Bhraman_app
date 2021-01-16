import 'package:bharat_bhraman_app/Screens/profilescreen.dart';
import 'package:bharat_bhraman_app/models/profile.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProfileLandingpage extends StatefulWidget {
  final String uid;
  ProfileLandingpage({this.uid});

  @override
  _ProfileLandingpageState createState() => _ProfileLandingpageState();
}

class _ProfileLandingpageState extends State<ProfileLandingpage> {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<Profile> readEntries() {
    return _db.collection('profile').doc(widget.uid).snapshots().map((doc) {
      return Profile.fromJson(doc.data());
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Profile>(
        stream: readEntries(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            Profile profile = snapshot.data;

            if (profile == null) {
              return ProfileScreen(
                uid: widget.uid,
                profile: null,
              );
            }
            return ProfileScreen(
              uid: widget.uid,
              profile: profile,
            );
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
