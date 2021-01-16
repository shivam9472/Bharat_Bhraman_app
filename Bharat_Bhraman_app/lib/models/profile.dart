import 'package:flutter/material.dart';

class Profile {
  final String imageurl;
  final String name;
  final String address;
  final String pincode;
  final String city;
  final String state;
  final String phoneno;
  final String entryid;
  Profile(
      {this.imageurl,
      this.name,
      this.address,
      this.pincode,
      this.city,
      this.state,
      this.phoneno,
      this.entryid});
  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      imageurl: json['imageurl'],
      name: json['name'],
      address: json['address'],
      pincode: json['pincode'],
      city: json['city'],
      state: json['state'],
      phoneno: json['phoneno'],
      entryid: json['entryid'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageurl': imageurl,
      'name': name,
      'address': address,
      'pincode': pincode,
      'city': city,
      'state': state,
      'phoneno': phoneno,
      'entryid': entryid,
    };
  }
}
