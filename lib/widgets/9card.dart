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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10, //creates shadow
              child: Column(children: [
                ListTile(
                  title: Text("Sachin Tendulker"),
                  subtitle: Text("23 minutes ago"),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('images/download.jpg')),
                ),
                ListTile(
                  title: Text("Cute pupppy..... some text"),
                ),
                Image.asset('images/bike.jpg'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                  ],
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10, //creates shadow
              child: Column(children: [
                ListTile(
                  title: Text("Dhoni"),
                  subtitle: Text("30 minutes ago"),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('images/car.jpg')),
                ),
                ListTile(
                  title: Text("Nice car"),
                ),
                Image.asset('images/car.jpg'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
