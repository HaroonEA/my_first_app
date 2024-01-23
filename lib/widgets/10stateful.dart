import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var dsptext = "Hello worlds"; //declared varibale
  var iconclrlike = Colors.black;
  void changetext() {
    //creating function to be performed onpress
    setState(() {
      dsptext = "good morning";
    });
  }

  void changetexth() {
    setState(() {
      dsptext = "hello world";
    });
  }

  void changeclrlike() {
    setState(() {
      if (iconclrlike == Colors.black) {
        iconclrlike = Colors.blue;
      } else {
        iconclrlike = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 20,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dsptext,
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                changetext();
              },
              child: Text(
                "Goodmorning",
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
              onPressed: () {
                changetexth();
              },
              child: Text(
                "hello world",
                style: TextStyle(fontSize: 20),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  changeclrlike();
                },
                icon: Icon(Icons.thumb_up),
                iconSize: 40,
                color: iconclrlike,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down)),
            ],
          )
        ],
      )),
    );
  }
}
