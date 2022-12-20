import 'package:flutter/material.dart';
import 'package:flutterpractive1/view/Home.dart';
import 'package:flutterpractive1/view/SplashScreen.dart';
import 'dart:ui';
import 'package:flutterpractive1/Utils/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future main() async {
  // initialize Hive
 await Hive.initFlutter();
  
 //open the box
 var box = await Hive.openBox('myBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.lightBlueAccent,accentColor:COLOR_DARK_BLUE, secondaryHeaderColor: COLOR_DARK_BLUE),
      home:SplashScreen(),
      routes: {"/counter" :(context) =>Home()},
    );
  }
}
