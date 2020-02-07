import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omstay_indonesia/widgets/destination_carousel.dart';
import 'package:omstay_indonesia/widgets/hotel_carousel.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];


  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;

        });
        print(_selectedIndex);
      },
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30)),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 10.0,
            ),
            DestionationCarousel(),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 10.0),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
             Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 40.0),
              child: Text(
                'Get unforgettable experiences in your life by visiting Indonesia with Omstay.',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18.0,
                    color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value){
          setState(() {
            _currentTab = value;          
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0, color: Colors.grey[700]),
            title: Text("Home", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart, size: 30.0, color: Colors.grey[700]),
            title: Text("Cart", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, size: 30.0, color: Colors.grey[700]),
            title: Text("Discover", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, size: 30.0, color: Colors.grey[700]),
            title: Text("Message", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30.0, color: Colors.grey[700]),
            title: Text("Profile", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),),
          ),
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}
