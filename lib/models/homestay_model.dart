class Homestay{
  String imageUrl;
  String name;
  String address;
  int price;

  Homestay({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Homestay> homestays =[
  Homestay(
    imageUrl: 'assets/images/bali.jpg',
    name: 'Homestay a',
    address: 'Jalan abc no.1',
    price: 2500,
  ),
  Homestay(
    imageUrl: 'assets/images/bali.jpg',
    name: 'Homestay a',
    address: 'Jalan abc no.2',
    price: 2500,
  ),
  Homestay(
    imageUrl: 'assets/images/bali.jpg',
    name: 'Homestay b',
    address: 'Jalan abc no.2',
    price: 2500,
  ),
  
];