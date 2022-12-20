import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

import 'Home.dart';

class SplashScreen extends StatefulWidget  {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}
class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const Home()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.white,
        child: Column(

          children: <Widget>[
            Expanded(
              flex: 6,
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/counter");
                },
                child: Center(
                  child:  Lottie.asset('assets/lottie/splash_anim.json',frameRate: FrameRate(120)),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


}
