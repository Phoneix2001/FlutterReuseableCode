// To parse this JSON data, do
//
//     final allBuilding = allBuildingFromJson(jsonString);

import 'dart:convert';

List<AllBuilding> allBuildingFromJson(String str) => List<AllBuilding>.from(json.decode(str).map((x) => AllBuilding.fromJson(x)));

String allBuildingToJson(List<AllBuilding> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllBuilding {
  AllBuilding({
    this.syncRows,
  });

  List<SyncRow>? syncRows;

  factory AllBuilding.fromJson(Map<String, dynamic> json) => AllBuilding(
    syncRows: List<SyncRow>.from(json["syncRows"].map((x) => SyncRow.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "syncRows": List<dynamic>.from(syncRows!.map((x) => x.toJson())),
  };
}

class SyncRow {
  SyncRow({
    this.sync,
    this.data,
  });

  Sync? sync;
  Data? data;

  factory SyncRow.fromJson(Map<String, dynamic> json) => SyncRow(
    sync: Sync.fromJson(json["sync"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "sync": sync?.toJson(),
    "data": data?.toJson(),
  };
}

class Data {
  Data({
    this.buildingId,
    this.buildingNumber,
    this.buildingName,
    this.buildingAbbr,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postalCode,
    this.contactName,
    this.phone,
    this.email,
    this.comments,
    this.createdByUserId,
    this.createdByUserName,
    this.createdAt,
    this.lastEditedByUserId,
    this.lastEditedByUserName,
    this.lastEditedAt,
    this.custom1Value,
    this.custom2Value,
  });

  String? buildingId;
  String? buildingNumber;
  String? buildingName;
  String? buildingAbbr;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postalCode;
  String? contactName;
  String? phone;
  String? email;
  String? comments;
  String? createdByUserId;
  String? createdByUserName;
  String? createdAt;
  String? lastEditedByUserId;
  String? lastEditedByUserName;
  String? lastEditedAt;
  String? custom1Value;
  String? custom2Value;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    buildingId: json["buildingId"],
    buildingNumber: json["buildingNumber"],
    buildingName: json["buildingName"],
    buildingAbbr: json["buildingAbbr"],
    address1: json["address1"],
    address2: json["address2"],
    city: json["city"],
    state: json["state"],
    postalCode: json["postalCode"],
    contactName: json["contactName"],
    phone: json["phone"],
    email: json["email"],
    comments: json["comments"],
    createdByUserId: json["createdByUserId"],
    createdByUserName: json["createdByUserName"],
    createdAt: json["createdAt"],
    lastEditedByUserId: json["lastEditedByUserId"],
    lastEditedByUserName: json["lastEditedByUserName"],
    lastEditedAt: json["lastEditedAt"],
    custom1Value: json["custom1Value"],
    custom2Value: json["custom2Value"],
  );

  Map<String, dynamic> toJson() => {
    "buildingId": buildingId,
    "buildingNumber": buildingNumber,
    "buildingName": buildingName,
    "buildingAbbr": buildingAbbr,
    "address1": address1,
    "address2": address2,
    "city": city,
    "state": state,
    "postalCode": postalCode,
    "contactName": contactName,
    "phone": phone,
    "email": email,
    "comments": comments,
    "createdByUserId": createdByUserId,
    "createdByUserName": createdByUserName,
    "createdAt": createdAt,
    "lastEditedByUserId": lastEditedByUserId,
    "lastEditedByUserName": lastEditedByUserName,
    "lastEditedAt": lastEditedAt,
    "custom1Value": custom1Value,
    "custom2Value": custom2Value,
  };
}

class Sync {
  Sync({
    this.id,
    this.operation,
    this.timestamp,
  });

  int? id;
  String? operation;
  String? timestamp;

  factory Sync.fromJson(Map<String, dynamic> json) => Sync(
    id: json["id"],
    operation: json["operation"],
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "operation": operation,
    "timestamp": timestamp,
  };
}
