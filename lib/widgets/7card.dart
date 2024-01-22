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
          //we can scroll the cards using listview
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(children: const [
                  ListTile(
                    title: Text("CBI 5"),
                    subtitle: Text("Starring Mammootty"),
                    textColor: Colors.white,
                    leading: Icon(Icons
                        .movie), //leading used to display at first(right side
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    //onTap: (){},
                  )
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.red,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: const [
                  ListTile(
                    title: Text("Lucifer"),
                    subtitle: Text("Starring Mohanlal"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    //onTap: (){},
                  )
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(children: const [
                  ListTile(
                    title: Text("CBI 5"),
                    subtitle: Text("Starring Mammootty"),
                    textColor: Colors.white,
                    leading: Icon(Icons
                        .movie), //leading used to display at first(right side
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    //onTap: (){},
                  )
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.red,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: const [
                  ListTile(
                    title: Text("Lucifer"),
                    subtitle: Text("Starring Mohanlal"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    //onTap: (){},
                  )
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.red,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: const [
                  ListTile(
                    title: Text("Lucifer"),
                    subtitle: Text("Starring Mohanlal"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    //onTap: (){},
                  )
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.red,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: const [
                  ListTile(
                    title: Text("Lucifer"),
                    subtitle: Text("Starring Mohanlal"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    //onTap: (){},
                  )
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(children: const [
                  ListTile(
                    title: Text("CBI 5"),
                    subtitle: Text("Starring Mammootty"),
                    textColor: Colors.white,
                    leading: Icon(Icons
                        .movie), //leading used to display at first(right side
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    //onTap: (){},
                  )
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(children: const [
                  ListTile(
                    title: Text("CBI 5"),
                    subtitle: Text("Starring Mammootty"),
                    textColor: Colors.white,
                    leading: Icon(Icons
                        .movie), //leading used to display at first(right side
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    //onTap: (){},
                  )
                ]),
              ),
            ),
          ],
        ));
  }
}
