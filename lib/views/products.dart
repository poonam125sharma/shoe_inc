import 'package:flutter/material.dart';
import '../extensions/hover_extensions.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bg1 = RadialGradient(
      colors: [
        const Color(0xFFfaa700),
        const Color(0xFFe48d00),
      ],
    );
    final btn1bg = Color(0xFFa1173c);
    final img1 = 'shoe-1.png';

    final bg2 = RadialGradient(
      colors: [
        const Color(0xFFfce4b3),
        const Color(0xFFeac886),
      ],
    );
    final btn2bg = Color(0xFF2f4858);
    final img2 = 'shoe-2.png';

    final bg3 = RadialGradient(
      colors: [
        const Color(0xFF6dd5ed),
        const Color(0xFF2193b0),
      ],
    );
    final btn3bg = Color(0xFF008951);
    final img3 = 'shoe-3.png';

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Our Products',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 60, height: 1, letterSpacing: 4,color: Colors.black,fontFamily: 'Montserrat',fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 100,),
          SingleProduct(bgColor: bg1, btnBg: btn1bg, img: img1,),
          SizedBox(height: 100,),
          SingleProduct(bgColor: bg2, btnBg: btn2bg, img: img2,),
          SizedBox(height: 100,),
          SingleProduct(bgColor: bg3, btnBg: btn3bg, img: img3,),
          SizedBox(height: 100,),
        ],
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final RadialGradient bgColor;
  final Color btnBg;
  final String img;

  SingleProduct({this.bgColor, this.btnBg, this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: bgColor,
      ),
      padding: const EdgeInsets.all(50),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'A really nice shoe'.toUpperCase(),
                  style: TextStyle(fontSize: 80, fontFamily: 'Montserrat', color: Colors.white, fontWeight: FontWeight.w600),
                  softWrap: true,
                ),
                const SizedBox(height: 30,),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa quam perspiciatis facilis beatae laudantium quidem enim sit sequi!',
                  style: TextStyle(fontSize: 16, fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.w100),
                  softWrap: true,
                ),
                const SizedBox(height: 30,),
                MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
                  textColor: Colors.white,
                  color: btnBg,            
                  child: Text(
                    'Buy Now',
                    style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold,letterSpacing: 0.5, fontSize: 16,),
                  ),
                  onPressed: (){}
                ).showCursorOnHover.moveUpOnHover,
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: -15),
            child: Image.asset(
              'assets/img/$img',
              width: 500,
            ),
          ),
        ],
      ),
    );
  }
}