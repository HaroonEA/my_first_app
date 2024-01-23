import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
      drawer: Drawer(
        //creates drawer(left side)
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John"),
              accountEmail: Text("john@mail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/ball.jpg'),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              iconColor: Colors.black,
              title: Text(
                "profile",
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.black,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              iconColor: Colors.black,
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.black,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              iconColor: Colors.black,
              title: Text(
                "Dashboard",
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.black,
              onTap: () {},
            )
          ],
        ),
      ),
      body: null,
    );
  }
}
