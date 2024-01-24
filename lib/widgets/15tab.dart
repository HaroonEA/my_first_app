import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, //no. of tabs
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: const [
              // Tab(
              //   text: "Chats",
              // ),
              // Tab(
              //   text: "Status",
              // ),
              // Tab(
              //   text: "Calls",
              // )
              // Tab(
              //   icon: Icon(Icons.home),
              // ),
              // Tab(
              //   icon: Icon(Icons.settings),
              // ),
              // Tab(
              //   icon: Icon(Icons.share),
              // ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "games",
              ),
              Tab(
                text: "movies",
              ),
              Tab(
                text: "Chats1",
              ),
              Tab(
                text: "Chats2",
              ),
              Tab(
                text: "Chats3",
              ),
            ],
            indicatorColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 8,
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.purple),
          ),
          title: Text("Tab bar"),
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
        body: TabBarView(children: const [
          Center(
            child: Text(
              "home page",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "settings page",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "share page",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "share page",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "share page",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "share page",
              style: TextStyle(fontSize: 30),
            ),
          )
        ]),
      ),
    );
  }
}
