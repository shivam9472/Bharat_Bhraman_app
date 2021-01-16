import 'package:flutter/material.dart';

class States {
  final String imageurl;
  final String title;
  final String area;
  final String population;
  final String capital;
  final bool state;
  final String cm;
  final String language;
  States(
      {@required this.imageurl,
      @required this.title,
      @required this.area,
      @required this.population,
      @required this.capital,
      @required this.state,
      this.cm,
      this.language});
}
