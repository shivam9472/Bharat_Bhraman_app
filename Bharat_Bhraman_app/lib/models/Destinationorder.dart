import 'package:flutter/material.dart';

class Destinationorder {
  final String name;
  final String date;
  final String pickeddate;
  final String phoneno;
  final String noofperson;
  final String paymentid;
  final String amount;
  final String imageurl;
  final String city;

  Destinationorder(
      {this.name,
      this.date,
      this.pickeddate,
      this.phoneno,
      this.noofperson,
      this.paymentid,
      this.amount,
      this.imageurl,
      this.city});
  factory Destinationorder.fromJson(Map<String, dynamic> json) {
    return Destinationorder(
        name: json['name'],
        date: json['date'],
        phoneno: json['phoneno'],
        noofperson: json['noofperson'],
        paymentid: json['paymentid'],
        amount: json['amount'],
        pickeddate: json['pickeddate'],
        imageurl: json['imageurl'],
        city: json['city']);
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'date': date,
      'phoneno': phoneno,
      'noofperson': noofperson,
      'paymentid': paymentid,
      'amount': amount,
      'pickeddate': pickeddate,
      'imageurl': imageurl,
      'city': city
    };
  }
}
