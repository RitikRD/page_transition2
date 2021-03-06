import 'package:flutter/material.dart';
import 'package:test1/pages/swiperightpage.dart';

import 'swipeleftpage.dart';

class CenterPage extends StatelessWidget {
  final PageController pageController;

  const CenterPage({Key key, this.pageController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                pageController.animateToPage(
                  0,
                  duration: Duration(milliseconds: 150),
                  curve: Curves.easeIn,
                );
              },
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/facebook.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Center(child: Text("CENTER")),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                pageController.animateToPage(
                  2,
                  duration: Duration(milliseconds: 150),
                  curve: Curves.easeIn,
                );
              },
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/google.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ));
  }
}
