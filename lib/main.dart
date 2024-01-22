import 'package:flutter/material.dart';
//import './widgets/1container.dart';
//import './widgets/2rowcoloumn.dart';
//import './widgets/3text.dart';
//import './widgets/4button.dart';
//import './widgets/5text_field.dart';
//import './widgets/6image.dart';
import './widgets/7card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Demo App', home: MyWidget());
  }
}
