import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'images/mountain.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text Widget at Center
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 200),
                child: Text(
                  'If you can’t feed a hundred people, then just feed one.',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              // Spacer for creating space between text and button
              Spacer(),
              // Elevated Button a little bit down
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/pg2");
                  },
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
