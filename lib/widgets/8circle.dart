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
      body: ListView(children: const [
        Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: Text(
                      "sign in",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80,
                  child: Icon(
                    Icons.verified_user,
                    size: 50,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/fish.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                      'images/car.jpg'), //NetworkImage-used to show image from net
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
