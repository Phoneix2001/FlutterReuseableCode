import 'package:flutter/material.dart';
import 'package:flutterpractive1/Utils/widget_functions.dart';
import 'package:flutterpractive1/Utils/custom_functions.dart';

class DatabaseData extends StatefulWidget {
  final String Username;
  final String password;
  const DatabaseData({Key? key, required this.Username, required this.password})
      : super(key: key);

  @override
  State<DatabaseData> createState() => _DatabaseDataState();
}

class _DatabaseDataState extends State<DatabaseData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Username  -> ${widget.Username}",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              addVerticalSpace(50),
              Text("Password  -> ${widget.password}",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              addVerticalSpace(50),
              Text("DataBaseUsername  -> ${readData('myBox', 'username')}",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              addVerticalSpace(50),
              Text("DataBasePassword  -> ${readData('myBox', 'password')}",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              addVerticalSpace(50),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      deleteData('username', 'myBox');
                    });
                  },
                  child: Text("Delete Username")),
              addVerticalSpace(50),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
deleteAll('myBox');
                    });
                  },
                  child: Text("Delete All"))
            ],
          ),
        ),
      ),
    ));
  }
}
