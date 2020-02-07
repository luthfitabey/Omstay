import 'package:omstay_indonesia/models/activity_model.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

  List<Activity> activities = [
    Activity(
      imageUrl : 'assets/images/papua.jpg',
      name: 'Raja Ampat, Papua',
      type: 'Visit Papua',
      startTimes: ['9.00 am', '11:00 am'],
      rating: 5,
      price: 30,
    ),
  ];

  List<Destination> destinations = [
    Destination(
      imageUrl : 'assets/images/batu.jpg',
      city: 'Batu',
      country: 'Indonesia',
      description: 'Visit Batu',
      activities: activities,
    ),
    Destination(
      imageUrl : 'assets/images/bali.jpg',
      city: 'Bali',
      country: 'Indonesia',
      description: 'Visit bali',
      activities: activities,
    ),
    Destination(
      imageUrl : 'assets/images/bunaken.jpg',
      city: 'Sulawesi Utara',
      country: 'Indonesia',
      description: 'Visit Bunaken',
      activities: activities,
    ),
    Destination(
      imageUrl : 'assets/images/papua.jpg',
      city: 'Papua',
      country: 'Indonesia',
      description: 'Visit Papua',
      activities: activities,
    ),
    Destination(
      imageUrl : 'assets/images/ntb.jpg',
      city: 'Nusa Tenggara Barat',
      country: 'Indonesia',
      description: 'Visit NTB',
      activities: activities,
    ),
  ];