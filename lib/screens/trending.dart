import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../clipper/itembox.dart';
import '../styles/styles.dart';
import '../widgets//iconmenu.dart';
class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
        Navigator.pushNamed(context,'/details');
          },
          child: Stack(
            children: <Widget>[
              Center(
                child: CustomPaint(
                  painter: MyPainter(),
                  child: Container(
                    // margin: EdgeInsets.all(8),
                    width: width * 0.58,
                    height: height * 0.56,
                  ),
                ),
              ),
              Positioned(
                  //left: 140,
                  bottom: width * 0.58,
                  child: Image.asset(
                    'assets/images/cactus.png',
                    height: height * 0.3,
                  )),
              Positioned(
                child: buildContent(),
                bottom: height * 0.05,
                left: width * 0.24,
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xFFc5e0cf),
                  child: Icon(
                    Feather.shopping_cart,
                    color: Colors.black,
                  ),
                ),
                bottom: height * 0.05,
                right: width * 0.25,
              ),
            ],
            alignment: Alignment.center,
            overflow: Overflow.visible,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, bottom: 8, top: 8),
          child: Text('Treatment', style: titlestyle),
        ),
        BuildIconMenu(),
        Padding(
          padding: EdgeInsets.only(bottom: 15),
        ),
      ],
    );
  }

  Container buildContent() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text('OUTDOOR PLANT', style: descsub),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('Optuntia Cactus.', style: desctitle),
        ),
        Text(
          'A cactus is the only plant that can\nsit in a blazing south window\nwhere the sun pours in, magnified\nthrough the glass.',
          style: desccontent,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'FROM',
            style: descprice,
          ),
        ),
        Text(
          '\$30',
          style: desctitle,
        ),
      ],
    ));
  }
}
