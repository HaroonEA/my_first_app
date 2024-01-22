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
            mainAxisAlignment: MainAxisAlignment.spaceAround, //gap btwn btns
            children: [
              TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    log("clicked on text button");
                  },
                  child: Text('Text Button')),
              TextButton.icon(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  log("clicked on text btn with icon");
                },
                onLongPress: () {
                  log("Longpressed on text btn with icon");
                },
                icon: Icon(Icons.home),
                label: Text("Home"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                        left: 150, right: 150, top: 10, bottom: 10)),
                    foregroundColor: MaterialStateProperty.all(Colors.yellow),
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    minimumSize: MaterialStateProperty.all(Size(200, 60)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 20))),
                onPressed: () {
                  log('clicked on elevated button');
                },
                onLongPress: () {},
                child: Text("Sign in"),
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      side: MaterialStateProperty.all(
                          BorderSide(color: Colors.yellow, width: 5)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 20)),
                      minimumSize: MaterialStateProperty.all(Size(200, 50)),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {},
                  child: Text("Sign Up"))
            ],
          ),
        ));
  }
}
