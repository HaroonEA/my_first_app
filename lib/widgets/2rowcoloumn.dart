import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(
          title: Text("Learn Flutter"), //default color-blue/white
          centerTitle: true, //align to center
          backgroundColor: Colors.blue, //red[100]-shows diff shades of red
          //leading - left sidil icons kodukkan
          leading: Icon(Icons.menu), //nonclickable-just icons
          //actions-right sidil icons kodukkan
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)), //clickable
            //can add multiple icons, because it is a list
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ],
          //shape-used to change shape of appbar
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          //Elevation
          elevation: 20, //creates a shadow
        ),
        /*body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //end-align to right
          children: [
            //can have multiple child widgets
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            )
          ],
        )*/
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //end-align to right
          children: [
            //can have multiple child widgets
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            )
          ],
        ));
  }
}
