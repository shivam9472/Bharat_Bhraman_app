import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Niedetailsscreen extends StatefulWidget {
  final String backgroundimageurl;
  final String description;
  final String title;
  Niedetailsscreen(
      {Key key, this.backgroundimageurl, this.description, this.title})
      : super(key: key);

  @override
  _NiedetailsscreenState createState() => _NiedetailsscreenState();
}

class _NiedetailsscreenState extends State<Niedetailsscreen> {
  AudioPlayer audioplayer = new AudioPlayer();

  Duration duration = new Duration();

  Duration position = new Duration();
  bool playing = false;
  void getAudio1() async {
    var url =
        "https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/audio%2Fjan.mp3?alt=media&token=8f6ae28d-fab4-4766-8647-1edb65fec4ab";
    if (playing) {
      var res = await audioplayer.pause();
      if (res == 1) {
        setState(() {
          playing = false;
        });
      }
    } else {
      var res = await audioplayer.play(url);
      if (res == 1) {
        setState(() {
          playing = true;
        });
      }
    }
    audioplayer.onDurationChanged.listen((dd) {
      setState(() {
        duration = dd;
      });
    });
    audioplayer.onAudioPositionChanged.listen((dd) {
      setState(() {
        position = dd;
      });
    });
  }

  void getAudio2() async {
    var url =
        "https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/audio%2Fvande.mp3?alt=media&token=43beac76-831f-4606-a19f-ad0cb46f899b";

    if (playing) {
      var res = await audioplayer.pause();
      if (res == 1) {
        setState(() {
          playing = false;
        });
      }
    } else {
      var res = await audioplayer.play(url);
      if (res == 1) {
        setState(() {
          playing = true;
        });
      }
    }
    audioplayer.onDurationChanged.listen((dd) {
      setState(() {
        duration = dd;
      });
    });
    audioplayer.onAudioPositionChanged.listen((dd) {
      setState(() {
        position = dd;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    audioplayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  widget.backgroundimageurl,
                  height: size.height * .4,
                  width: size.width * .7,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            widget.title == "National Anthem"
                ? Slider.adaptive(
                    min: 0.0,
                    value: position.inSeconds.toDouble(),
                    max: duration.inSeconds.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        audioplayer.seek(new Duration(seconds: value.toInt()));
                      });
                    },
                  )
                : Container(),
            widget.title == "National Anthem"
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        InkWell(
                          onTap: () {
                            getAudio1();
                          },
                          child: Icon(
                            playing == false
                                ? Icons.play_circle_fill
                                : Icons.pause_circle_filled,
                            size: 40,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            audioplayer.stop();
                            setState(() {
                              playing = false;
                              position = Duration(seconds: 0);
                            });
                          },
                          child: Icon(
                            Icons.stop_circle_outlined,
                            size: 40,
                          ),
                        ),
                      ])
                : Container(),
            widget.title == "National Song"
                ? Slider.adaptive(
                    min: 0.0,
                    value: position.inSeconds.toDouble(),
                    max: duration.inSeconds.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        audioplayer.seek(new Duration(seconds: value.toInt()));
                      });
                    },
                  )
                : Container(),
            widget.title == "National Song"
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        InkWell(
                          onTap: () {
                            getAudio2();
                          },
                          child: Icon(
                            playing == false
                                ? Icons.play_circle_fill
                                : Icons.pause_circle_filled,
                            size: 40,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            audioplayer.stop();
                            setState(() {
                              playing = false;
                              position = Duration(seconds: 0);
                            });
                          },
                          child: Icon(
                            Icons.stop_circle_outlined,
                            size: 40,
                          ),
                        ),
                      ])
                : Container(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                widget.description,
                style: GoogleFonts.acme(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
