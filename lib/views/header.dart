import 'package:flutter/material.dart';
import '../extensions/hover_extensions.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [Color(0xFF444444), Color(0xFF111111)],
        // ),
        image: DecorationImage(
          image: AssetImage('assets/img/shoe-3.png'),
          fit: BoxFit.fitHeight,
          repeat: ImageRepeat.noRepeat,
          alignment: Alignment.topCenter,
          colorFilter: ColorFilter.mode(Color(0xFF444444).withOpacity(1), BlendMode.multiply),
        ),
        // gradient: RadialGradient(
        //   colors: [Color(0xFF444444), Color(0xFF111111)],
        //   // colors: [Colors.red, Colors.yellow],
        // ),
        // backgroundBlendMode: BlendMode.multiply,
        color: Color(0xFF444444),
      ),
      child: HeaderContent(),
    );
  }
}

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 200),
      margin: const EdgeInsets.symmetric(horizontal: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Amazing Shoes at an Amazing Price'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 60, height: 1, letterSpacing: 4,color: Colors.white,fontFamily: 'Montserrat',fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 30,),
          Text(
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto minima necessitatibus vero voluptas asperiores dolorem soluta praesentium ab.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: 'Montserrat'),
          ),
          SizedBox(height: 30,),
          MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            textColor: Colors.white,
            color: Color(0xfffaa700),
            child: Text(
              'See What We Have',
              style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold,letterSpacing: 0.5, fontSize: 16,),
            ),
            onPressed: (){}
          ).showCursorOnHover.moveUpOnHover,
        ],
      ),
    );
  }
}