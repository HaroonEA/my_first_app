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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    //log("clicked");
                  },
                  child: Text('Text Button')),
              TextButton.icon(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  //log("clicked");
                },
                onLongPress: () {
                  //log("Longpressed")
                },
                icon: Icon(Icons.home),
                label: Text("Home"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.yellow),
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    minimumSize: MaterialStateProperty.all(Size(10, 10)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 20))),
                onPressed: () {},
                onLongPress: () {},
                child: Text("Sign in"),
              )
            ],
          ),
        ));
  }
}
