import 'package:flutter/material.dart';
import '../models/slide_model.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            slideList[index].title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20,  fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            slideList[index].description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                // shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(slideList[index].imageUrl),
                    fit: BoxFit.contain)),
          ),
           SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
