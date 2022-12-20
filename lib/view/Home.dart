import 'package:flutter/material.dart';
import 'package:flutterpractive1/Custom/ReusableScreens.dart';
import 'package:flutterpractive1/Utils/widget_functions.dart';
import 'package:flutterpractive1/Utils/custom_functions.dart';
import 'package:flutterpractive1/api_service.dart';
import 'package:flutterpractive1/data_class/all_assets.dart';
import 'package:flutterpractive1/view/list_view_of_all_assets.dart';

import 'DatabaseData.dart';
import 'LoginDataPage.dart';
import 'outlined_button_click_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          child: Column(
            children: <Widget>[
              addVerticalSpace(50),
              InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {},
                child: Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Image.asset('assets/images/ic_logo/drawable-hdpi/Group_hdpi.png'),
                  ),

                ),
              ),
              addVerticalSpace(50),
              OutlinedTextInputLayout(nameController: nameController, labelText: "USERNAME", hintText: "",textVisibility: false,),
              addHorizontalSpace(20),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  obscureText: hidden,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: '',
                      suffixIcon: InkWell(
                        onTap: _change,
                        child: Icon(Icons.visibility),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 70),
                child: Container(
                  decoration: BoxDecoration(

                      border: Border.all(
                        color: Colors.cyan,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4.0))

                  ),
                  height: 50,


                  child: InkWell(

                    onTap: () {

                  intent(context, () => ListViewOfAllAssets());

                    },
                    child:Ink(
                      color: Colors.cyan,
                      child: Center(
                        child: Text("get Data",style: TextStyle(color: Colors.white)),
                      ),
                    ) ,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 70),
                child: Container(
                  decoration: BoxDecoration(

                      border: Border.all(
                        color: Colors.cyan,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4.0))

                  ),
                  height: 50,


                  child: InkWell(

                    onTap: (){
                      intent(context,()=>DatabaseData(Username: nameController.text.toString(), password: passwordController.text.toString()));
                      writeData(nameController.text.toString(),'myBox','username');
                      writeData(passwordController.text.toString(), 'myBox', 'password');

                    },
                    child:Ink(
                      color: Colors.cyan,
                      child: Center(
                        child: Text("Submit",style: TextStyle(color: Colors.white)),
                      ),
                    ) ,
                  ),
                ),
              ),
              addVerticalSpace(10),
              Container(padding: EdgeInsets.all(10),width: double.infinity,
              child: OutlinedButton(onPressed: () { intent(context, () => OutlinedButtonClickScreen()); }, child: const Text("Outlined Button",textAlign: TextAlign.justify,overflow: TextOverflow.fade,softWrap:true ,),
              ),),
              addVerticalSpace(10),
             Container(child:TextButton(onPressed: () {  }, child: Text("Text Button"),))
            ],
          ),
        ),
      ),
    );
  }
  //Reference to the Box




  void _change() {
    if (hidden == true) {
      hidden = false;
    } else {
      hidden = true;
    }
    setState(() {});
  }
}



