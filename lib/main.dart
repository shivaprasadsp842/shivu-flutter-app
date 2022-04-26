
import 'package:flutter/material.dart';
import 'package:furniture_ui/splashscreen.dart';
import 'package:furniture_ui/view/homescreen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: true,
      home: SplashScreen(),
    );
  }
}

