import 'package:flutter/material.dart';
import 'package:flutterpractive1/data_class/all_assets.dart';

import '../Utils/custom_functions.dart';
class SelectedData extends StatefulWidget {
  final List<AllAssets> all_assets;
  const SelectedData({Key? key, required this.all_assets}) : super(key: key);

  @override
  _SelectedDataState createState() => _SelectedDataState();
}

class _SelectedDataState extends State<SelectedData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Assets"),
        backgroundColor: Colors.cyan,
      ),body: getList(),
    );
  }
  Widget getList() {
    return ListView.builder(
        itemCount: widget.all_assets.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showToast(context);
            },
            child: Card(
              color: widget.all_assets[index].isSelected == false
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
                              widget.all_assets[index].isSelected =
                              !widget.all_assets[index].isSelected;
                            });
                          },
                          child: widget.all_assets[index].isSelected == false
                              ? Text("${widget.all_assets[index].createdByUserName}",
                              overflow: TextOverflow.ellipsis,
                              softWrap: true)
                              : Text(
                            widget.all_assets[index].assetId,
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
}
