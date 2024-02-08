import 'package:flutter/material.dart';
import 'package:my_first_app/screens/page2.dart';
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
//import './widgets/14floatbtn.dart';
//import './widgets/15tab.dart';
//import './widgets/16radio.dart';
//import './widgets/17navigation.dart';
//import 'screens/home.dart';
//import 'screens/product.dart';
//import 'screens/about.dart';
import 'screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashWidget(),
      // title: 'Demo App',
      debugShowCheckedModeBanner: false, //to remove debug symbol
      routes: {
        //'/': (context) => const SplashWidget(),
        // '/product': (context) => const ProductScreen(),
        //'/about': (context) => const AboutScreen(),
        '/pg2': (context) => Page2(),
      },
      initialRoute: '/',
    );
  }
}
