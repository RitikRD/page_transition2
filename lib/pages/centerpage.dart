import 'package:flutter/material.dart';
import 'package:test1/pages/swiperightpage.dart';

import 'swipeleftpage.dart';

class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Left()));
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Right()));
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
