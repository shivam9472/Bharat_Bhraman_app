import 'package:bharat_bhraman_app/models/candh.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Culturalandheritagescreen extends StatelessWidget {
  Culturalandheritagescreen({Key key}) : super(key: key);
  var cultureandheritage_list = [
    Cultureandheritage(
        title: 'Monuments',
        imageurl:
            'https://knowindia.gov.in/assets/images/img-inr-moments-06.png'),
    Cultureandheritage(
        title: 'Festivals',
        imageurl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi8C2-RbS-U9YQ-J6v_KHd1rNxDrogmxcaTA&usqp=CAU'),
    Cultureandheritage(
        title: 'Performing Arts',
        imageurl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0I3wUcepK-bD4m-XSnOtPoYj7hDKAYZ-ooQ&usqp=CAU'),
    Cultureandheritage(
        title: 'Handicrafts',
        imageurl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD0rgAGO7TOKix1Yo2bmmQHjGE_ZGUOEzXfQ&usqp=CAU'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Culture & Heritage"),
      ),
      body: ListView.builder(
        itemCount: cultureandheritage_list.length,
        itemBuilder: (ctx, i) {
          return ListTile(
            title: Text(
              cultureandheritage_list[i].title,
              style: GoogleFonts.acme(
                  textStyle: TextStyle(
                color: Colors.black,
                fontSize: 24,
              )),
            ),
            leading: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  cultureandheritage_list[i].imageurl,
                  fit: BoxFit.fill,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
