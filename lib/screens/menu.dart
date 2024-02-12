import 'package:flutter/material.dart';

void main() {
  runApp(MenuScreen());
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('available'),
          actions: [IconButton(icon: Icon(Icons.login), onPressed: () {})],
        ),
        body: Column(
          children: [
            Expanded(
              child: Image.asset('images/mountain.jpg', fit: BoxFit.cover),
            ),
            Text('Make a good thing happen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 4),
              children:
                  ['available', 'add', 'Location', 'community'].map((text) {
                return Card(
                  child: Center(
                      child: Text(text,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                );
              }).toList(),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Need some food'))
          ],
        ),
      ),
    );
  }
}
