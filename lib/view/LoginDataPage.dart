import 'package:flutter/material.dart';
import 'package:flutterpractive1/Utils/widget_functions.dart';
import 'package:flutterpractive1/Utils/custom_functions.dart';

class LoginDataPage extends StatelessWidget {
var Username;
var password;
LoginDataPage(this.Username,this.password);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("Username  -> $Username",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
             addVerticalSpace(50),
             Text("Password  -> $password",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
             addVerticalSpace(50),
             Text("DataBaseUsername  -> ${readData('myBox', 'username')}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
             addVerticalSpace(50),
             Text("DataBasePassword  -> ${readData('myBox', 'password')}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
             addVerticalSpace(50),
             ElevatedButton(onPressed:
             (){


               } , child: Text("Delete Username")),

           ],

         ),
       ),
      ),
    ));
  }

void _incrementCounter() {


}
}
