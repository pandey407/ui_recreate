import 'package:flutter/material.dart';
import '../widgets/toprow.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF2f8754),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              BuildTopIcons(),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xFF2f8754),
                ),
              ),
              Expanded(
                flex: 2,
                child: Stack(
                  alignment: Alignment.topCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(45),
                          topLeft: Radius.circular(45),
                        ),
                      ),
                    ),
                    Positioned(
                        left: width * 0.15,
                        bottom: height * 0.3,
                        child: Image.asset(
                          'assets/images/cactus.png',
                          height: height * 0.4,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
