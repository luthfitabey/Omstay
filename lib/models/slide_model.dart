import 'package:flutter/material.dart';

class Slide{
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });

}

final slideList = [
  Slide(
    imageUrl: 'assets/images/logoBaru.png',
    title: '',
    description: '',
  ),
  Slide(
    imageUrl: 'assets/images/rumah padang.png',
    title: 'OMSTAY?',
    description: 'Omstay is a platform for renting private facilities owned by the community to both local and foreign travelers'
  ),
  Slide(
    imageUrl: 'assets/images/Indonesia.png',
    title: 'INDONESIA',
    description: 'Indonesia is a hidden paradise for world tourists, but many places have not been exposed'
  ),
  Slide(
    imageUrl: 'assets/images/boro.png',
    title: 'CONNECT HOMESTAY AND TOURISM',
    description: 'We connect tourist destinations in Indonesia and provide convenient facilities'
  ),
];