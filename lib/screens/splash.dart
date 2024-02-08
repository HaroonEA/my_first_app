import 'dart:async';
import 'package:flutter/material.dart';
import 'page1.dart';

class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    super.initState();

    // Delay for 3 seconds (adjust as needed)
    Timer(Duration(seconds: 6), () {
      // Navigate to the ProductWidget after splash duration
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => page1(),
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCE4B4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'available',
              style: TextStyle(
                  fontFamily: 'Inter',
                  letterSpacing: 12,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              'easy or possible to get, get to, or use',
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
