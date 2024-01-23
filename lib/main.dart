import 'package:flutter/material.dart';
//import './widgets/1container.dart';
//import './widgets/2rowcoloumn.dart';
//import './widgets/3text.dart';
//import './widgets/4button.dart';
//import './widgets/5text_field.dart';
//import './widgets/6image.dart';
//import './widgets/7card.dart';
//import './widgets/8circle.dart';
//import './widgets/9card.dart';
//import './widgets/10stateful.dart';
//import './widgets/11drawer.dart';
//import './widgets/12checkbox.dart';
//import './widgets/13bottomnavbar.dart';
import './widgets/14floatbtn.dart';

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
