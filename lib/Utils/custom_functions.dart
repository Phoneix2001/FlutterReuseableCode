import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';



//DataBase Hive
void writeData(String data, String box,String key) {
  try{
    final _myBox = Hive.box(box);
    _myBox.put(key, data);
  }on Exception catch (e,s) {
    print(e.toString());
    print(s.toString());
  }catch(e,s){
    print(e.toString());
    print(s.toString());
  }


}
String readData(String box, String key) {
  var value = "";
  try{
    final _myBox = Hive.box(box);
    value =_myBox.get(key);
    return value;
  }on Exception catch (e,s){
    print(e.toString());
    print(s.toString());
  }catch (e,s){
    print(e.toString());
    print(s.toString());
  }
  return value;

}
bool deleteData(String key,String box) {
  bool value = true;
  try {
    final _myBox = Hive.box(box);
    _myBox.delete(key);
  } catch (e, s) {
    value = false;
    print(e.toString());
    print(s.toString());
  }

  return value;
}

bool deleteAll(String box){
  var value = true;
  try {
    final _myBox = Hive.box(box);
    _myBox.clear();
  } catch (e, s) {
    value = false;
    print(e.toString());
    print(s.toString());
  }
  return value;
}


void intent(BuildContext context,  Function secondScreen) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => secondScreen()));
}


//Toast
void showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Clicked outside'),
      action: SnackBarAction(label: 'Hide', onPressed: scaffold.hideCurrentSnackBar,textColor: Colors.cyan,),
    ),
  );
}


