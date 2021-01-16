import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class GeneralInformationdetailsscreen extends StatefulWidget {
  final String title;
  final String name;
  final String description;
  final String imageurl;
  final String date;
  final String url;
  GeneralInformationdetailsscreen(
      {Key key,
      this.title,
      this.name,
      this.description,
      this.imageurl,
      this.date,
      this.url})
      : super(key: key);

  @override
  _GeneralInformationdetailsscreenState createState() =>
      _GeneralInformationdetailsscreenState();
}

class _GeneralInformationdetailsscreenState
    extends State<GeneralInformationdetailsscreen> {
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  // Future<void> _makePhoneCall(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  widget.imageurl,
                  height: size.height * .35,
                  width: size.width * .6,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                '${widget.name}',
                style: GoogleFonts.acme(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                '(${widget.date})',
                style: GoogleFonts.acme(
                    textStyle: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '${widget.description}',
                style: GoogleFonts.acme(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                )),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'for more information',
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
                ),
                FlatButton(
                  child: Text(
                    "Click here",
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    )),
                  ),
                  onPressed: () {
                    _launchInBrowser(widget.url);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
