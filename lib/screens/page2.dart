import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'images/city.png',
            fit: BoxFit.cover,
          ),
          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text Widget at Center
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 200),
                child: Text(
                  'Giving is not just about making a donation. It is about making a difference',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
