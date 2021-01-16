import 'package:bharat_bhraman_app/Screens/cultureandheritagescreen.dart';
import 'package:bharat_bhraman_app/Screens/destinationorderscreen.dart';
import 'package:bharat_bhraman_app/Screens/generlinformationscreen.dart';

import 'package:bharat_bhraman_app/Screens/nationalidentityscreen.dart';
import 'package:bharat_bhraman_app/Screens/orderscreen.dart';
import 'package:bharat_bhraman_app/Screens/profile_landingpage.dart';
import 'package:bharat_bhraman_app/Screens/profilescreen.dart';
import 'package:bharat_bhraman_app/Screens/statesscreen.dart';
import 'package:bharat_bhraman_app/models/home_list.dart';
import 'package:bharat_bhraman_app/models/profile.dart';

import 'package:bharat_bhraman_app/services/auth.dart';
import 'package:bharat_bhraman_app/widgets/platform_alert_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';
import '../models/profile.dart';
import '../widgets/destination_carousel.dart';
import '../widgets/handicrafts_carousel.dart';
import '../widgets/festivals_carousel.dart';
import '../widgets/performing_arts_carousel.dart';
import '../widgets/events_carousel.dart';
import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  final String uid;
  MainDrawer({Key key, this.uid}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<Profile> readEntries() {
    return _db.collection('profile').doc(widget.uid).snapshots().map((doc) {
      return Profile.fromJson(doc.data());
    });
  }

  Profile profile;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome to Bharat Bhraman',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Theme.of(context).primaryColor),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      child: ClipOval(
                          child: Image.network(
                              'https://png.pngtree.com/png-vector/20190710/ourmid/pngtree-user-vector-avatar-png-image_1541962.jpg')),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Hello athithi',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            minWidth: double.infinity,
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.orangeAccent,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => ProfileLandingpage(
                        uid: widget.uid,
                      )));
            },
            child: Text(
              "Profile",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            minWidth: double.infinity,
            height: 50,
            color: Colors.pinkAccent.shade100,
            child: Text(
              'Booked Tickets',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => DestinationOrderScreen(
                      uid: widget.uid,
                    ))),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            minWidth: double.infinity,
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Colors.indigo,
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => OrderScreen(
                      uid: widget.uid,
                    ))),
            child: Text(
              "Your Cart",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
