import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int indexnum = 0;
  List tabwidgets = [
    Text(
      "home",
      style: TextStyle(fontSize: 20),
    ),
    Text(
      "profile",
      style: TextStyle(fontSize: 20),
    ),
    Text(
      "dashboard",
      style: TextStyle(fontSize: 20),
    ),
    Text(
      "settings",
      style: TextStyle(fontSize: 20),
    )
  ];
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
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "profile",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "dashboard",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "settings",
                backgroundColor: Colors.black),
          ],
          iconSize: 30,
          selectedFontSize: 20,
          showSelectedLabels: true, //show selected items label
          showUnselectedLabels: true,
          currentIndex: indexnum, //currently selected tile/button
          onTap: (int index) {
            setState(() {
              indexnum = index;
            });
          },
        ),
        body: Center(
          child: tabwidgets.elementAt(indexnum),
        ));
  }
}
