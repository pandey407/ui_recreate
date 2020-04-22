import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BuildIconMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
     return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildIconContainer(width, Feather.sun),
        buildIconContainer(width, Feather.droplet),
        buildIconContainer(width, Feather.thermometer),
        buildIconContainer(width, Feather.navigation),
      ],
    );
  }

  Container buildIconContainer(double width, IconData icon) {
    return Container(
      height: width / 6,
      width: width / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.03),
        color: Color(0xFFc5e0cf),
      ),
      child: Icon(
        icon,
        size: width / 12,
        color: Colors.green[800],
      ),
    );
  }
  }

