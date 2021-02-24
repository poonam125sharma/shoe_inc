import 'package:flutter/material.dart';
import '../extensions/hover_extensions.dart';

class Featured extends StatelessWidget {

  Widget featuredProduct(imageName) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Color(0xff2193b0),
          radius: 100,
        ),
        Image.asset(
          imageName,
          alignment: Alignment.center,
          scale: 2.7,
        ),
      ],
    ).showCursorOnHover.moveUpOnHover;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      // margin: const EdgeInsets.symmetric(horizontal: 150),
      color: Color(0xFFEEEEEE),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Featured Products',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 60, height: 1, letterSpacing: 4,color: Colors.black,fontFamily: 'Montserrat',fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              featuredProduct('assets/img/shoe-4.png'),
              SizedBox(width: 50),
              featuredProduct('assets/img/shoe-5.png'),
              SizedBox(width: 50),
              featuredProduct('assets/img/shoe-6.png')
            ],
          ),
        ],
      ),
    );
  }
}