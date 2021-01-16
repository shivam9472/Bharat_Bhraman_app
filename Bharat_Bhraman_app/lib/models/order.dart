import 'package:flutter/material.dart';

class Order {
  final String transactionid;
  final String amount;
  final String name;
  final String date;
  final String imageurl;
  final String phoneno;
  final String cname;

  final String address;
  final String pincode;
  final String city;
  final String state;

  Order(
      {this.transactionid,
      this.amount,
      this.name,
      this.date,
      this.imageurl,
      this.phoneno,
      this.cname,
      this.address,
      this.pincode,
      this.city,
      this.state});
  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      transactionid: json['transactionid'],
      amount: json['amount'],
      name: json['name'],
      date: json['date'],
      imageurl: json['imageurl'],
      cname: json['cname'],
      address: json['address'],
      pincode: json['pincode'],
      city: json['city'],
      state: json['state'],
      phoneno: json['phoneno'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'transactionid': transactionid,
      'amount': amount,
      'name': name,
      'date': date,
      'imageurl': imageurl,
      'cname': cname,
      'address': address,
      'pincode': pincode,
      'city': city,
      'state': state,
      'phoneno': phoneno,
    };
  }
}
