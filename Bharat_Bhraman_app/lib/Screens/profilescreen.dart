import 'dart:io';

import 'package:bharat_bhraman_app/models/profile.dart';

import 'package:bharat_bhraman_app/services/profile_firebase.dart';
import 'package:bharat_bhraman_app/utilities/constants.dart';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class ProfileScreen extends StatefulWidget {
  final String uid;
  final Profile profile;
  ProfileScreen({Key key, this.uid, this.profile}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  String imageurl;
  String name;
  String address;
  String pincode;
  String city;
  String state;
  String phoneno;
  String entryid;
  final firestoreService = Profilefirebase();

  var uuid = Uuid();

  @override
  void initState() {
    if (widget.profile != null) {
      //Edit
      imageurl = widget.profile.imageurl;
      name = widget.profile.name;
      print(name);
      address = widget.profile.address;
      pincode = widget.profile.pincode;
      city = widget.profile.city;
      state = widget.profile.state;
      phoneno = widget.profile.phoneno;
      print(phoneno);
      entryid = widget.profile.entryid;
      print("yes");
    } else {
      //Add
      imageurl = null;
      name = null;
      address = null;
      pincode = null;
      city = null;
      state = null;
      phoneno = null;
      entryid = null;
      print("no");
    }
    super.initState();
  }

  Future<void> getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    // dynamic reference = storage.ref().child("profileImages/${widget.uid}");
    // dynamic uploadTask = reference.putFile(_image);

    // dynamic taskSnapshot = await uploadTask.onComplete;

    // // Waits till the file is uploaded then stores the download url
    // setState(() async {
    //   imageurl = await taskSnapshot
    //       .ref()
    //       .child("profileImages/${widget.uid}")
    //       .getDownloadURL();
    // });
    // print(imageurl);
    setState(() async {
      await firebase_storage.FirebaseStorage.instance
          .ref('profileImages/${widget.uid}')
          .putFile(_image);

      imageurl = await firebase_storage.FirebaseStorage.instance
          .ref('profileImages/${widget.uid}')
          .getDownloadURL();
    });
  }

  saveEntry() {
    if (entryid == null) {
      //Add
      var newEntry = Profile(
          name: name,
          imageurl: imageurl,
          address: address,
          pincode: pincode,
          city: city,
          state: state,
          phoneno: phoneno,
          entryid: uuid.v1());
      firestoreService.setEntry(newEntry, widget.uid);
    } else {
      //Edit
      var updatedEntry = Profile(
          name: name,
          imageurl: imageurl,
          address: address,
          phoneno: phoneno,
          pincode: pincode,
          city: city,
          state: state,
          entryid: entryid);
      firestoreService.setEntry(updatedEntry, widget.uid);
    }
  }

  final _formKey = GlobalKey<FormState>();
  final picker = ImagePicker();
  File _image;
  // FirebaseStorage storage = FirebaseStorage.instanceFor();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          FlatButton(
            onPressed: () {
              saveEntry();
              Navigator.of(context).pop();
            },
            child: Text("Update"),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(size.width * 0.5),
                    child: _image == null
                        ? imageurl != null
                            ? Image.network(
                                imageurl,
                                height: size.height * 0.3,
                                width: size.width * 0.5,
                                fit: BoxFit.cover,
                              )
                            : Container(
                                height: size.height * 0.3,
                                width: size.width * 0.5,
                              )
                        : Image.file(_image)),
              ),
              Center(
                child: FlatButton(
                  child: Text("Edit image"),
                  onPressed: () => getImage(),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: kBoxDecorationStyle,
                      height: 60.0,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          hintText: 'Your Name',
                          hintStyle: kHintTextStyle,
                        ),
                        textInputAction: TextInputAction.next,
                        initialValue: name,
                        onChanged: (value) {
                          name = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: kBoxDecorationStyle,
                      height: 60.0,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                        ),
                        initialValue: phoneno,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          hintText: 'Phone Number',
                          hintStyle: kHintTextStyle,
                        ),
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {
                          phoneno = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          return null;
                        },
                        maxLength: 10,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: kBoxDecorationStyle,
                      height: 60.0,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                        ),
                        initialValue: address,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          hintText: 'Address',
                          hintStyle: kHintTextStyle,
                        ),
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {
                          address = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: kBoxDecorationStyle,
                      height: 60.0,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                        ),
                        initialValue: city,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          hintText: 'City',
                          hintStyle: kHintTextStyle,
                        ),
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {
                          city = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: kBoxDecorationStyle,
                      height: 60.0,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                        ),
                        initialValue: state,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          hintText: 'State',
                          hintStyle: kHintTextStyle,
                        ),
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {
                          state = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: kBoxDecorationStyle,
                      height: 60.0,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                        ),
                        initialValue: pincode,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          hintText: 'Pincode',
                          hintStyle: kHintTextStyle,
                        ),
                        textInputAction: TextInputAction.done,
                        maxLength: 6,
                        onChanged: (value) {
                          pincode = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
