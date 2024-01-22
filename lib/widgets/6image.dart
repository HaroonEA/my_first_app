import 'dart:developer';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        elevation: 20,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: Image.asset(
                'images/ball.jpg',
                fit: BoxFit.contain,
              ),
            )
            //to show the image from the internet
            // Container(
            //   child: Image.network(
            //     'Paste the link here'
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
