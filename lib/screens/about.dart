import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About page"),
      ),
      body: Center(
        child: Text(
          "About Page",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
