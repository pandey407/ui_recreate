import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BuildTopIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        menuIcon,
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey[200],
            child: Stack(
              children: <Widget>[
                Positioned(
                  height: 10,
                  width: 10,
                  top: 1.5,
                  left: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    //radius: 5,
                  ),
                ),
                Icon(
                  Feather.shopping_cart,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget get menuIcon {
  return FlatButton(
    onPressed: () {
      print('pressed');
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        iconline(
          width: 15,
          height: 3,
        ),
        iconline(
          width: 30,
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: iconline(
            width: 20,
            height: 3,
          ),
        ),
      ],
    ),
  );
}

Widget iconline({double height, double width}) {
  return Container(
    height: height,
    width: width,
    margin: EdgeInsets.only(bottom: 6),
    decoration: BoxDecoration(
      color: Colors.black38,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}
