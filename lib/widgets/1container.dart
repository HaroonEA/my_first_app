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
        body: Center(
            child: Container(
          // color: Colors.yellowAccent,
          height: 200,
          width: double.infinity, //divisinte width anusarich width varum
          margin: EdgeInsets.all(20), //4sidesil ninn margin varum
          padding: EdgeInsets.all(10), //gap btwn child widget & container
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.purple,
              border: Border.all(color: Colors.red, width: 15),
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(5, 5), blurRadius: 30)
              ]), //container color
          child: Text(
            'Hello world',
            style: TextStyle(fontSize: 25, color: Colors.white), //textcolor
          ),
        )));
  }
}
