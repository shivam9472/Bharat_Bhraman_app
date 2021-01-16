class Handicraft {
  String imageUrl;
  String name;
  String address;
  String description;
  int amount;

  Handicraft(
      {this.imageUrl, this.name, this.address, this.description, this.amount});
}

final List<Handicraft> handicrafts = [
  Handicraft(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fhand1.jpg?alt=media&token=3a3b7b57-aaa0-4088-b50b-0032fd4288c4',
    name: 'Wood Work',
    address: 'Chattisgarh',
    amount: 200,
    description:
        'The artisans of Chhattisgarh specialise in wooden crafts like masks, doors, window frames and sculptures. Jharkhand is famous for its wooden toys which are always in a pair. The woodcarvings of Goa are an aesthetic blend of Portuguese and Indian cultures, and the designs are primarily floral, animal and human figures.',
  ),
  Handicraft(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fhand2.jpg?alt=media&token=92a61a0a-5f02-43e3-b5a7-4e78e14af2a5',
    name: 'Pashmina Shawls',
    address: 'Kashmir',
    amount: 100,
    description:
        'Pashmina is a fine type of wool. Its textiles are first woven in Kashmir. These shawls are made from a fine type of cashmere wool and are then transported to the valley of Kashmir in northern India, where it is entirely hand processed. All steps from combing and spinning, to weaving and finishing, is entirely carried out by hand by dedicated craftsmen and women. The major centre of Pashmina fabric production is the old district of Srinagar. The approximate craft time put into producing a single Pashmina shawl is 180 hours. They come in beautiful vibrant colours and have exquisite embroidery on them and at the same time can keep you warm and are also known for their softness.',
  ),
  Handicraft(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fhand3.png?alt=media&token=23ab4d44-698d-4834-b9d2-8319952f7361',
    name: 'Shell',
    address: 'Odisha',
    amount: 400,
    description:
        'There are three kinds of shell from which shell handicrafts are made in India - conch shells, tortoiseshell and seashell. Different kinds of goods like bangles, forks, decorative bowls, lockets, curtains, chandeliers, mirror frames, table mats, etc. are the products of shell handicrafts. In general, the places located on the seashore like Gulf of Mannar, Goa, Odisha, etc. are the places for shell handicraft and these art pieces are found in abundance here at a lower price.',
  ),
  Handicraft(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fhand4.jpg?alt=media&token=55c231d4-b5cf-44b7-9f27-333edc61abdd',
    name: 'Brass Works',
    address: 'Rajasthan',
    amount: 800,
    description:
        'Brass is known for its durability, and this feature adds to its advantage when used as handicrafts. Different items made of brass like Lord Ganeshas figure in different postures, vases, tabletops, perforated lamps, ornament boxes, wine glasses, and many more are widely used in many Indian houses even today.',
  ),
  Handicraft(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/bharatbhraman-b1cfc.appspot.com/o/images%2Fhand5.jpg?alt=media&token=02f5ef0b-8e50-43ad-a67e-deeb730fc75a',
    name: 'Zardozi',
    address: 'Uttar Pradesh',
    amount: 500,
    description:
        'Zardozi embroidery work involves making elaborate designs, using gold and silver threads along with studded pearls and precious stones. Intricate designs in gold are made of silk, velvet and even tissue materials famous in the state of Uttar Pradesh. Initially, the embroidery was done with pure silver wires and real gold leaves. However, today, craftsmen make use of a combination of copper wire, with a golden or silver polish, and a silk thread.',
  ),
];
