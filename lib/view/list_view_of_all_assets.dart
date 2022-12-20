

import 'package:flutter/material.dart';
import 'package:flutterpractive1/view/selected_data.dart';


import '../api_service.dart';
import 'package:flutterpractive1/Utils/custom_functions.dart';

import '../data_class/all_assets.dart';
import '../data_class/all_building.dart';

class ListViewOfAllAssets extends StatefulWidget {
  const ListViewOfAllAssets({Key? key}) : super(key: key);

  @override
  _ListViewOfAllAssetsState createState() => _ListViewOfAllAssetsState();
}

class _ListViewOfAllAssetsState extends State<ListViewOfAllAssets> {
  bool valuefirst = false;
  int users = 0;
  var isloaded = false;
  var isClicked = false;
  var value = "";
  List<AllAssets> allasets1 = [];
  List<AllAssets> allasets = [];
  List<AllBuilding> allbuilding = [];
  @override
  void initState() {
    fetchAllAssets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Assets"),
        backgroundColor: Colors.cyan,
      ),
      body: Visibility(
          visible: isloaded,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.all(10),
                    child: getList()),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    for (var value in allasets) {
                      if (value.isSelected) {
                        allasets1.add(value);
                      }
                    }
                    intent(
                        context,
                        () => SelectedData(
                              all_assets: allasets1,
                            ));
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        child: Text("Select Data",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'open_sans_bold.ttf'))),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget getList() {
    return ListView.builder(
        itemCount: allasets.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showToast(context);
            },
            child: Card(
              color: allasets[index].isSelected == false
                  ? Colors.cyan
                  : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  title: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              allasets[index].isSelected =
                                  !allasets[index].isSelected;
                            });
                          },
                          child: allasets[index].isSelected == false
                              ? Text("${allasets[index].createdByUserName}",
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true)
                              : Text(
                                  allasets[index].assetId,
                                  overflow: TextOverflow.fade,
                                  softWrap: true,
                                ))
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  void fetchAllAssets() async {
    var response = await ApiService().get(
        "/api/v1/DataExchange/assets/sync/history/notes",
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzaWQiOiJiNDY1ZTA3NS1kOWIyLTQzYzgtYmIwOS1hYWI3ZmI3ZjkxOGYiLCJqdGkiOiIzM2UxYmQwOC00OGU1LTQ5MDYtYTM5Yi1mYTgyZDg3"
            "ZjBkZmQiLCJ1c2VySWQiOiJhMDVhNDU1Mi1jNDdmLTQ4YTctMmJhZC0wOGRhODgyNDdjMWYiLCJuYmYiOjE2Njk3MDM2NjksImV4cCI6MTY2OT"
            "cwNDg2OSwiaXNzIjoiaHR0cHM6Ly9rZXByYXBpLmhjYW1ndC5jb20iLCJhdWQiOiJodHRwczovL2tlcHJhcGkuaGNhbWd0LmNvbSJ9.T4GkggH2MygvCpEYuFFa5DB8ky1FdVueRD9r1u5XPDo");
    if (response == null) return;
    debugPrint('Successfully :$response ');

    setState(() {
      allasets = allAssetsFromJson(response);
      users = allasets.length;

      if (users != 0 && allasets.isNotEmpty) {
        isloaded = true;
      }
      debugPrint(users.toString());
    });
  }
}
