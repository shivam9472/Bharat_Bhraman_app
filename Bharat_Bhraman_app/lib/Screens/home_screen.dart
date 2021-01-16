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

import 'package:provider/provider.dart';
import '../widgets/destination_carousel.dart';
import '../widgets/handicrafts_carousel.dart';
import '../widgets/festivals_carousel.dart';
import '../widgets/performing_arts_carousel.dart';
import '../widgets/events_carousel.dart';
import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';

import 'chatbotscreen.dart';

class HomeScreen extends StatefulWidget {
  final String uid;

  HomeScreen({
    Key key,
    this.uid,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _signOut(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context);
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final didRequestSignOut = await PlatformAlertDialog(
      title: 'Logout',
      content: 'Are you sure that you want to logout?',
      cancelActionText: 'Cancel',
      defaultActionText: 'Logout',
    ).show(context);
    if (didRequestSignOut == true) {
      _signOut(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Home_item> home_list = [
      Home_item(
          imageurl: "https://knowindia.gov.in/assets/images/img-identity.png",
          titile: "National Identity Element",
          ontap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => NationalidentityScreen()));
          }),
      Home_item(
          imageurl: "https://knowindia.gov.in/assets/images/img-culture.png",
          titile: "Cultural And Heritage",
          ontap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => Culturalandheritagescreen()));
          }),
      Home_item(
          imageurl: "https://knowindia.gov.in/assets/images/img-states.png",
          titile: "States/UTs",
          ontap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => StateScreen()));
          }),
      Home_item(
          imageurl: "https://knowindia.gov.in/assets/images/img-gen-info.png",
          titile: "General Information",
          ontap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => Generalinformationscreen()));
          }),
    ];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.orangeAccent, Colors.yellowAccent]),
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Image(
            image: AssetImage('assets/robot.png'),
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => Chatbotscreen())),
        ),
        appBar: AppBar(
          title: Text("Bharat Bhraman"),
          actions: [
//            FlatButton(
//              child: Text('horders'),
//              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
//                  builder: (ctx) => DestinationOrderScreen(
//                        uid: widget.uid,
//                      ))),
//            ),

            IconButton(
              onPressed: () => _confirmSignOut(context),
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        drawer: MainDrawer(uid: widget.uid),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20),
            children: <Widget>[
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: home_list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1),
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: home_list[i].ontap,
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.5,
                      child: Column(
                        children: [
                          Image.network(
                            home_list[i].imageurl,
                            height: size.height * 0.2,
                            width: size.width * 0.3,
                          ),
                          Text(home_list[i].titile),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              DestinationCarousel(
                uid: widget.uid,
              ), // monuments
              SizedBox(height: 20.0),
              HandicraftsCarousel(
                uid: widget.uid,
              ),
              SizedBox(height: 20.0),
              FestivalsCarousel(),
              SizedBox(height: 20.0),
              PerformingArtsCarousel(),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  'National Events',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              CarouselDemo(),
            ],
          ),
        ),
      ),
    );
  }
}
