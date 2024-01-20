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
            child: Text(
          "Learn flutter",
          style: TextStyle(
              fontSize: 40,
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 1,
              wordSpacing: 20,
              backgroundColor: Colors.yellow,
              shadows: const [
                Shadow(
                    color: Colors.black, offset: Offset(5, 5), blurRadius: 15)
              ]),
        )));
  }
}
