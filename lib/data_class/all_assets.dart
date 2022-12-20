import 'dart:convert';

List<AllAssets> allAssetsFromJson(String str) => List<AllAssets>.from(json.decode(str).map((x) => AllAssets.fromJson(x)));

String allAssetsToJson(List<AllAssets> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllAssets {
  AllAssets({
    required this.assetId,
     this.assetNumber,
     this.description,
     this.manufacture,
      this.model,
      this.serialNumber,
      this.tagNumber,
      this.departmentId,
      this.buildingId,
      this.roomId,
      this.createdByUserName,
      this.createdAt,
      this.lastEditedByUserName,
      this.lastEditedAt
  });

  String assetId;
  String? assetNumber;
  String? description;
  String? manufacture;
  String? model;
  String? serialNumber;
  String? tagNumber;
  String? departmentId;
  String? buildingId;
  String? roomId;
  String? createdByUserName;
  String? createdAt;
  String? lastEditedByUserName;
  String? lastEditedAt;
  bool isSelected = false;

  factory AllAssets.fromJson(Map<String, dynamic> json) => AllAssets(
    assetId: json["assetId"],
    assetNumber: json["assetNumber"],
    description: json["description"],
    manufacture: json["manufacture"],
    model: json["model"],
    serialNumber: json["serialNumber"],
    tagNumber: json["tagNumber"],
    departmentId: json["departmentId"],
    buildingId: json["buildingId"],
    roomId: json["roomId"],
    createdByUserName: json["createdByUserName"],
    createdAt: json["createdAt"],
    lastEditedByUserName: json["lastEditedByUserName"],
    lastEditedAt:json["lastEditedAt"],
  );

  Map<String, dynamic> toJson() => {
    "assetId": assetId,
    "assetNumber": assetNumber,
    "description": description,
    "manufacture": manufacture,
    "model": model,
    "serialNumber": serialNumber,
    "tagNumber": tagNumber,
    "departmentId": departmentId,
    "buildingId": buildingId,
    "roomId": roomId,
    "createdByUserName": createdByUserName,
    "createdAt": createdAt,
    "lastEditedByUserName": lastEditedByUserName,
    "lastEditedAt": lastEditedAt,
  };
}
