import 'package:bharat_bhraman_app/Screens/generalinformationdetailsscreen.dart';
import 'package:bharat_bhraman_app/models/generalinformation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Generalinformationscreen extends StatefulWidget {
  const Generalinformationscreen({Key key}) : super(key: key);

  @override
  _GeneralinformationscreenState createState() =>
      _GeneralinformationscreenState();
}

class _GeneralinformationscreenState extends State<Generalinformationscreen> {
  var generalinformation_list = [
    Generalinformation(
      title: "Presidents of India",
      name: 'Ram Nath Kovind',
      imageurl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Ram_Nath_Kovind_official_portrait.jpg/500px-Ram_Nath_Kovind_official_portrait.jpg",
      date: "July 25, 2017 - Incumbent",
      url: 'https://en.wikipedia.org/wiki/Ram_Nath_Kovind',
      description:
          "Ram Nath Kovind (born 1 October 1945) is an Indian politician serving as the 14th and current President of India.Prior to his nomination, he served as the 26th Governor of Bihar from 2015 to 2017 and as a Member of Parliament, Rajya Sabha from 1994 to 2006. Kovind was nominated as a presidential candidate by the ruling NDA coalition and won the 2017 presidential election.\n\nBefore entering politics, he was a lawyer for 16 years and practised in the Delhi High Court and the Supreme Court until 1993.",
    ),
    Generalinformation(
        title: 'Vice-Presidents of India',
        imageurl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Venkaiah_Naidu_official_portrait.jpg/550px-Venkaiah_Naidu_official_portrait.jpg',
        date: 'August 11, 2017 - Incumbent',
        name: 'Muppavarapu Venkaiah Naidu',
        url: 'https://en.wikipedia.org/wiki/Venkaiah_Naidu',
        description:
            'Muppavarapu Venkaiah Naidu (born 1 July 1949) is an Indian politician and the current Vice President of India and the Chairman of the Rajya Sabha, in office since 11 August 2017. Previously, he served as the Minister of Housing and Urban Poverty Alleviation, Urban Development and Information and Broadcasting in the Modi Cabinet. A prominent leader of the Bharatiya Janata Party, he also served as its national president from 2002 to 2004. Earlier, he was the Union Cabinet Minister for Rural Development in the Atal Bihari Vajpayee government. He took the oath as Vice-President of India and the Chairman of Rajya Sabha on 11 August 2017.'),
    Generalinformation(
        title: 'Prime Ministers of India',
        imageurl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Prime_Minister%2C_Shri_Narendra_Modi%2C_in_New_Delhi_on_August_08%2C_2019_%28cropped%29.jpg/450px-Prime_Minister%2C_Shri_Narendra_Modi%2C_in_New_Delhi_on_August_08%2C_2019_%28cropped%29.jpg',
        date: 'May 26, 2014 - Incumbent',
        url: 'https://en.wikipedia.org/wiki/Narendra_Modi',
        description:
            'Narendra Damodardas Modi (Gujarati pronunciation: [ˈnəɾendrə dɑmodəɾˈdɑs ˈmodiː] (born 17 September 1950) is an Indian politician serving as the 14th and current Prime Minister of India since 2014. He was the Chief Minister of Gujarat from 2001 to 2014 and is the Member of Parliament for Varanasi. Modi is a member of the Bharatiya Janata Party (BJP) and of the Rashtriya Swayamsevak Sangh (RSS), a Hindu nationalist volunteer organisation. He is the first prime minister outside of the Indian National Congress to win two consecutive terms with a full majority and the second to complete more than five years in office after Atal Bihari Vajpayee.',
        name: 'Narendra Modi '),
    Generalinformation(
        title: 'Chief Justices of India',
        imageurl:
            'https://upload.wikimedia.org/wikipedia/commons/c/c8/Hon%27ble_Justice_Sharad_Arvind_Bobde.jpg',
        date: '18 November 2019 - Incumbent',
        url: 'https://en.wikipedia.org/wiki/Sharad_Arvind_Bobde',
        description:
            'Sharad Arvind Bobde (born 24 April 1956) is an Indian judge serving as the 47th and current Chief Justice of India.\n\nHe is a former Chief Justice of Madhya Pradesh High Court. He is also serving as the Chancellor of Maharashtra National Law University, Mumbai and Maharashtra National Law University, Nagpur. He has a tenure of eight years in the Supreme Court of India and is due to retire on 23 April 2021.',
        name: 'Sharad Arvind Bobde'),
    Generalinformation(
      title: 'Chief Election Commissioners of India',
      date: '02 December, 2018 - Incumbent',
      url: 'https://en.wikipedia.org/wiki/Sunil_Arora',
      imageurl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Media_address_by_Chief_Election_Commissioner_of_India%2C_Shri_Sunil_Arora_on_2nd_December_2018_%28cropped%29.jpg/440px-Media_address_by_Chief_Election_Commissioner_of_India%2C_Shri_Sunil_Arora_on_2nd_December_2018_%28cropped%29.jpg',
      description:
          'Sunil Arora (born 13 April 1956) is the current and 23rd Chief Election Commissioner of India. He is also the chairman for Association of World Election Bodies(A-WEB). He is a retired 1980 batch Indian Administrative Service (IAS) officer of Rajasthan cadre. He also served as a secretary to the Government of India in two ministries.',
      name: 'Shri Sunil Arora',
    ),
    Generalinformation(
      title: 'Chief of Defence Staff',
      name: 'General Bipin Rawat',
      date: '31 December 2019 - Incumbent',
      url: 'https://en.wikipedia.org/wiki/Bipin_Rawat',
      imageurl:
          'https://upload.wikimedia.org/wikipedia/commons/8/87/Bipin_Rawat_Chief_of_Defence_Staff_%28CDS%29.jpg',
      description:
          'General Bipin Rawat, PVSM, UYSM, AVSM, YSM, SM, VSM, ADC (born 16 March 1958) is a four star general of the Indian Army. He is the first and current Chief of Defence Staff (CDS) of India. On 30 December 2019, he was appointed as the first CDS of India and assumed office from 1 January 2020.Prior to taking over as the CDS, he served as Chairman of the Chiefs of Staff Committee as well as 27th Chief of Army Staff of the Indian Army.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("General Information"),
        ),
        body: ListView.builder(
          itemCount: generalinformation_list.length,
          itemBuilder: (ctx, i) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => GeneralInformationdetailsscreen(
                          title: generalinformation_list[i].title,
                          date: generalinformation_list[i].date,
                          imageurl: generalinformation_list[i].imageurl,
                          description: generalinformation_list[i].description,
                          name: generalinformation_list[i].name,
                          url: generalinformation_list[i].url,
                        )));
              },
              title: Text(
                generalinformation_list[i].title,
                style: GoogleFonts.acme(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                )),
              ),
              subtitle: Text(
                "(${generalinformation_list[i].name})",
                style: GoogleFonts.acme(
                    textStyle: TextStyle(
                  color: Colors.pink,
                  fontSize: 16,
                )),
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  generalinformation_list[i].imageurl,
                  fit: BoxFit.fill,
                  height: 100,
                  width: 50,
                ),
              ),
            );
          },
        ));
  }
}
