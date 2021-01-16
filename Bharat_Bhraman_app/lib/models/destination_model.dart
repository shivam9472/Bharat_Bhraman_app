import '../models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;
  int amount;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activities,
      this.amount});
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Ftaj.jpg?alt=media&token=19d7018f-d1e6-4c61-b063-931c66a326c8',
    city: 'Taj Mahal',
    country: 'Agra',
    description:
        'Visit Yumthang Valley for an amazing and unforgettable adventure.',
    activities: activities,
    amount: 50,
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2FCharminar.jpg?alt=media&token=40c99468-71d8-4ca0-9263-2c9c237c70ae',
    city: 'Charminar',
    country: 'Hyderabad',
    description:
        'Visit Nohkailikai Falls for an amazing and unforgettable adventure.',
    activities: activities,
    amount: 20,
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fnewdelhi.jpg?alt=media&token=7e69a2c0-6189-4cc1-89f2-e695d93d6728',
    city: 'Red Fort',
    country: 'New Delhi',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: activities,
    amount: 30,
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fsuntemple.jpg?alt=media&token=0b62ad6b-343a-4b8f-a785-3c3fcab7a715',
    city: 'Sun Templer',
    country: 'Bhubaneshwar',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activities: activities,
    amount: 50,
  ),
  Destination(
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fstatue.jpg?alt=media&token=e1ff85e5-f981-49f1-9a65-5ab07f28082f',
      city: 'Statue Of Unity',
      country: 'Gujrat',
      description: 'Visit New York for an amazing and unforgettable adventure.',
      activities: activities,
      amount: 70),
];
