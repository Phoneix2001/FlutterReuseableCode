import 'package:flutter/material.dart';

class OutlinedButtonClickScreen extends StatefulWidget {
  const OutlinedButtonClickScreen({Key? key}) : super(key: key);

  @override
  _OutlinedButtonClickScreenState createState() =>
      _OutlinedButtonClickScreenState();
}

class _OutlinedButtonClickScreenState extends State<OutlinedButtonClickScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(child: Text("Working...",style: TextStyle(color: Colors.orange,fontSize: 40),))
    );

  }
}
