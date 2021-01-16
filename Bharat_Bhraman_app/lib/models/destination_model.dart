import '../models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  String mapUrl;
  int amount;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.mapUrl,
      this.amount});
}

List<Destination> destinations = [
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Ftaj.jpg?alt=media&token=19d7018f-d1e6-4c61-b063-931c66a326c8',
    city: 'Taj Mahal',
    country: 'Agra',
    amount: 20,
    description: 'Visit Taj Mahal for an amazing and unforgettable adventure.',
    mapUrl:
        'https://www.google.com/maps/d/u/0/viewer?msa=0&mid=12-NDt1PXsR23jR2uMTT_-xk6zRw&ll=27.170551000000003%2C78.04202600000002&z=17',
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2FCharminar.jpg?alt=media&token=40c99468-71d8-4ca0-9263-2c9c237c70ae',
    city: 'Charminar',
    country: 'Hyderabad',
    amount: 15,
    description: 'Visit Charminar for an amazing and unforgettable adventure.',
    mapUrl:
        'https://www.google.com/maps/d/viewer?msa=0&mid=13qxyaFoYAcmZhghhKMIn7DZF1Aw&ll=17.361550000000012%2C78.47475000000001&z=12',
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fred-fort-1200-getty-images.jpg?alt=media&token=b72f18e3-07c3-405d-9ff9-c03280b851c4',
    city: 'Red Fort',
    country: 'New Delhi',
    amount: 20,
    description: 'Visit Red Fort for an amazing and unforgettable adventure.',
    mapUrl:
        'https://www.google.com/maps/d/viewer?ie=UTF8&hl=en&msa=0&ll=28.657076999999994%2C77.24122500000001&spn=0.18675%2C0.494385&t=h&z=12&iwloc=00048b4731f8426fb25cb&mid=1JYjVM10Dz7g_C1vGLgm_bNrIjKU',
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fsuntemple.jpg?alt=media&token=0b62ad6b-343a-4b8f-a785-3c3fcab7a715',
    city: 'Sun Temple',
    country: 'Bhubaneshwar',
    amount: 25,
    description: 'Visit Sun Temple for an amazing and unforgettable adventure.',
    mapUrl:
        'https://www.google.com/maps/place/Konark+Sun+Temple/@19.8875953,86.0945364,15z/data=!4m5!3m4!1s0x0:0xed9983ca391e3247!8m2!3d19.8875953!4d86.0945364',
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fstatue.jpg?alt=media&token=e1ff85e5-f981-49f1-9a65-5ab07f28082f',
    city: 'Statue Of Unity',
    country: 'Gujrat',
    amount: 30,
    description:
        'Visit Statue Of Unity for an amazing and unforgettable adventure.',
    mapUrl:
        'https://www.google.com/maps/place/Statue+of+Unity/@21.8380184,73.7190728,15z/data=!4m5!3m4!1s0x0:0xb8e23c01a1f6eb18!8m2!3d21.8380184!4d73.7190728',
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fmahabodhi.jpg?alt=media&token=f2fa685a-e3e4-41f9-8ba6-96844a712b6a',
    city: 'Mahabodhi Temple',
    country: 'Bodh Gaya',
    amount: 16,
    description:
        'Visit Mahabodhi Temple for an amazing and unforgettable adventure.',
    mapUrl:
        'https://www.google.com/maps/uv?pb=!1s0x39f32c5b4bd80877%3A0xf8dd2e286fa80c97!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMoqrwjIvi2q0W-DiPkWVmRrJcprOGSfbmBoSV2%3Dw213-h160-k-no!5smahabodhi%20temple%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMoqrwjIvi2q0W-DiPkWVmRrJcprOGSfbmBoSV2&hl=en&sa=X&ved=2ahUKEwi8qoiH4p_uAhXExTgGHYMtBFMQoiowH3oECD0QAw',
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2F1200px-Ajanta_(63).jpg?alt=media&token=092a697a-113e-4119-885c-39dfc86f8fcd',
    city: 'Ajanta Caves',
    country: 'Lenapur Village',
    amount: 40,
    description:
        'Visit Ajanta Caves for an amazing and unforgettable adventure.',
    mapUrl:
        'https://www.google.com/maps/uv?pb=!1s0x3bd97f7014a75e43%3A0x7ca8d7c57639691f!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMyLzKUUEzVX0W7Z6xpUM6RBcmMeOcINRa8GYur%3Dw200-h200-k-no!5sajanta%20caves%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMyLzKUUEzVX0W7Z6xpUM6RBcmMeOcINRa8GYur&hl=en&sa=X&ved=2ahUKEwjt0rWI45_uAhWQzjgGHXfhAwcQoiowHXoECCkQAw',
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2FVICTORIA-MEMORIAL.jpg?alt=media&token=0ddd3a23-95ba-425d-93ad-504f96364186',
    city: 'Victoria Memorial',
    country: 'Kolkata',
    amount: 42,
    description:
        'Visit Victoria Memorial for an amazing and unforgettable adventure.',
    mapUrl:
        'https://www.google.com/maps/uv?pb=!1s0x3a02771346ae015d%3A0xb540e4bce39763!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNeYpamZdQ4AScsM3PcHhLwPzy-REKVv6h-oH3h%3Dw266-h200-k-no!5svictoria%20memorial%20kolkata%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNeYpamZdQ4AScsM3PcHhLwPzy-REKVv6h-oH3h&hl=en&sa=X&ved=2ahUKEwi2u96M5J_uAhVVcCsKHZTLC9wQoiowIHoECDgQAw',
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fhawa.jpg?alt=media&token=eadbbb31-3b13-4037-9df2-705893333a57',
    city: 'Hawa Mahal',
    country: 'Jaipur',
    amount: 20,
    description: 'Visit Hawa Mahal for an amazing and unforgettable adventure.',
    mapUrl:
        'https://www.google.com/maps/uv?pb=!1s0x396db14b1bd30ba5%3A0x860e5d531eccb20c!3m1!7e115!4shttps%3A%2F%2Fwww.trover.com%2Fd%2F1fzRG-hawa-mahal-jaipur-india!5shawa%20mahal%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e1!2shttps%3A%2F%2Fmedia2.trover.com%2FT%2F5a0074e21aafe4e2180510e5%2Ffixedw.jpg&hl=en&sa=X&ved=2ahUKEwjJjMjb5J_uAhUlzjgGHayCAyoQoiowIHoECDsQAw',
  ),
];
