import 'package:audioplayers/audioplayers.dart';
import 'package:bharat_bhraman_app/Screens/niedetailsscreen.dart';
import 'package:bharat_bhraman_app/models/nie.dart';
import 'package:flutter/material.dart';

class NationalidentityScreen extends StatefulWidget {
  const NationalidentityScreen({Key key}) : super(key: key);

  @override
  _NationalidentityScreenState createState() => _NationalidentityScreenState();
}

class _NationalidentityScreenState extends State<NationalidentityScreen> {
  AudioPlayer audioplayer = AudioPlayer();
  var nie_list = [
    Nie(
        imageurl: "https://knowindia.gov.in/assets/images/national-flag.jpg",
        title: "National Flag",
        backgroudimageurl:
            "https://knowindia.gov.in/assets/images/national_flag_inner.jpg",
        description:
            "The National Flag is a horizontal tricolour of India saffron (kesaria) at the top, white in the middle and India green at the bottom in equal proportion. The ratio of width of the flag to its length is two to three. In the centre of the white band is a navy-blue wheel which represents the chakra.The top saffron colour, indicates the strength and courage of the country. The white middle band indicates peace and truth with Dharma Chakra.\n\n The green shows the fertility, growth and auspiciousness of the land.\n\n Its design is that of the wheel which appears on the abacus of the Sarnath Lion Capital of Ashoka. Its diameter approximates to the width of the white band and it has 24 spokes. The design of the National Flag was adopted by the Constituent Assembly of India on 22 July 1947.\n\n It is really amazing to see the various changes that our National Flag went through since its first inception. It was discovered or recognised during our national struggle for freedom. The evolution of the Indian National Flag sailed through many vicissitudes to arrive at what it is today."),
    Nie(
        imageurl: "https://knowindia.gov.in/assets/images/national-bird.jpg",
        title: "National Bird",
        backgroudimageurl:
            "https://knowindia.gov.in/assets/images/national_bird_inner.jpg",
        description:
            "The Indian peacock, Pavo cristatus, the national bird of India, is a colourful, swan-sized bird, with a fan-shaped crest of feathers, a white patch under the eye and a long, slender neck. The male of the species is more colourful than the female, with a glistening blue breast and neck and a spectacular bronze-green tail of around 200 elongated feathers. The female is brownish, slightly smaller than the male and lacks the tail. The elaborate courtship dance of the male, fanning out the tail and preening its feathers is a gorgeous sight."),
    Nie(
        imageurl: "https://knowindia.gov.in/assets/images/national-flower.jpg",
        title: "National Flower",
        backgroudimageurl:
            "https://knowindia.gov.in/assets/images/national_flower_inner.jpg",
        description:
            "Lotus (Nelumbo Nucifera Gaertn) is the National Flower of India. It is a sacred flower and occupies a unique position in the art and mythology of ancient India and has been an auspicious symbol of Indian culture since time immemorial.\n\nIndia is rich in flora. Currently available data place India in the tenth position in the world and fourth in Asia in plant diversity. From about 70 per cent geographical area surveyed so far, 47,000 species of plants have been described by the Botanical Survey of India (BSI)."),
    Nie(
        imageurl: "https://knowindia.gov.in/assets/images/national-anthem.jpg",
        title: "National Anthem",
        backgroudimageurl:
            "https://www.ritiriwaz.com/wp-content/uploads/2017/01/Indian-anthem.png",
        description:
            "The National Anthem of India is played or song on various occasions. Instructions have been issued from time to time about the correct versions of the Anthem, the occasions on which these are to be played or sung, and about the need for paying respect to the anthem by observance of proper decorum on such occasions. The substance of these instructions has been embodied in this information sheet for general information and guidance."),
    Nie(
        imageurl:
            "https://knowindia.gov.in/assets/images/national-state-emblem.jpg",
        title: "State Emblem",
        backgroudimageurl:
            "https://knowindia.gov.in/assets/images/National-Emblem.png",
        description:
            "The state emblem is an adaptation from the Sarnath Lion Capital of Ashoka. In the original, there are four lions, standing back to back, mounted on an abacus with a frieze carrying sculptures in high relief of an elephant, a galloping horse, a bull and a lion separated by intervening wheels over a bell-shaped lotus. Carved out of a single block of polished sandstone, the Capital is crowned by the Wheel of the Law (Dharma Chakra).\n\n In the state emblem, adopted by the Government of India on 26 January 1950, only three lions are visible, the fourth being hidden from view. The wheel appears in relief in the centre of the abacus with a bull on right and a horse on left and the outlines of other wheels on extreme right and left. The bell-shaped lotus has been omitted. The words Satyameva Jayate from Mundaka Upanishad, meaning 'Truth Alone Triumphs', are inscribed below the abacus in Devanagari script."),
    Nie(
        imageurl: "https://knowindia.gov.in/assets/images/national-animal.jpg",
        title: "National Animal",
        backgroudimageurl:
            "https://knowindia.gov.in/assets/images/national_animal_inner.jpg",
        description:
            "The magnificent tiger, Panthera tigris is a striped animal. It has a thick yellow coat of fur with dark stripes. The combination of grace, strength, agility and enormous power has earned the tiger its pride of place as the national animal of India. Out of eight races of the species known, the Indian race, the Royal Bengal Tiger, is found throughout the country except in the north-western region and also in the neighbouring countries, Nepal, Bhutan and Bangladesh. To check the dwindling population of tigers in India, 'Project Tiger' was launched in April 1973. So far, 27 tiger reserves have been established in the country under this project, covering an area of 37,761 sq km."),
    Nie(
        imageurl: "https://knowindia.gov.in/assets/images/national-song.jpg",
        title: "National Song",
        backgroudimageurl:
            "https://www.mapsofindia.com/national-song-of-india.jpg",
        description:
            "The song Vande Mataram, composed in Sanskrit by Bankimchandra Chatterji, was a source of inspiration to the people in their struggle for freedom. It has an equal status with Jana-gana-mana. The first political occasion when it was sung was the 1896 session of the Indian National Congress."),
    Nie(
      imageurl:
          "https://knowindia.gov.in/assets/images/national-currency-symbol.jpg",
      title: "Currency Symbol",
      backgroudimageurl:
          "https://knowindia.gov.in/assets/images/national_currency_inner.jpg",
      description:
          "The symbol of Indian Rupee typifies India's international identity for money transactions and economic strength. The Indian Rupee sign is an allegory of Indian ethos. The symbol is an amalgam of Devanagari Ra and the Roman Capital R with two parallel horizontal stripes running at the top representing the national flag and also the equal to sign. The Indian Rupee sign was adopted by the Government of India on 15th July, 2010.\n\n The symbol, conceptualised and designed by Udaya Kumar, a post graduate in Design from Indian Institute of Technology Bombay, has been chosen from thousands of concept entries received by the Ministry of Finance through an open competition among resident Indian nationals. The process of establishing and implementing this new identity is underway through various digital technology and computer application",
    )
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("National Identity Element"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: GridView.builder(
          itemCount: nie_list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1),
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => Niedetailsscreen(
                          backgroundimageurl: nie_list[i].backgroudimageurl,
                          description: nie_list[i].description,
                          title: nie_list[i].title,
                        )));
              },
              child: Container(
                height: size.height * 0.25,
                width: size.width * 0.5,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(size.height * .5),
                      child: Image.network(
                        nie_list[i].imageurl,
                        height: size.height * 0.15,
                        width: size.width * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(nie_list[i].title),
                    SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   children: [
                    //     IconButton(
                    //       icon: Icon(Icons.play_arrow),
                    //       onPressed: null,
                    //     ),
                    //     IconButton(
                    //       icon: Icon(Icons.stop),
                    //       onPressed: null,
                    //     )
                    //   ],
                    // )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
