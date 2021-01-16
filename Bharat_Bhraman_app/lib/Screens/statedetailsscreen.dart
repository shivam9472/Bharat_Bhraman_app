import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatedetailsScreen extends StatelessWidget {
  final String title;
  final String area;
  final String population;
  final String capital;
  final String imageUrl;
  final String cm;
  final String language;
  const StatedetailsScreen(
      {Key key,
      this.title,
      this.area,
      this.population,
      this.capital,
      this.imageUrl,
      this.cm,
      this.language})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                imageUrl,
                height: size.height * .35,
                width: size.width * .6,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.green[100],
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Area",
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    )),
                  ),
                  Text(
                    area,
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
                  ),
                ]),
          ),
          Container(
            color: Colors.green[50],
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Population",
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    )),
                  ),
                  Text(
                    population,
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
                  ),
                ]),
          ),
          Container(
            color: Colors.green[100],
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Capital",
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    )),
                  ),
                  Text(
                    capital,
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
                  ),
                ]),
          ),
          Container(
            color: Colors.green[50],
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Current CM",
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    )),
                  ),
                  Text(
                    cm,
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
                  ),
                ]),
          ),
          Container(
            color: Colors.green[100],
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Language",
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    )),
                  ),
                  Text(
                    language,
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
                  ),
                ]),
          ),
        ],
      )),
    );
  }
}
