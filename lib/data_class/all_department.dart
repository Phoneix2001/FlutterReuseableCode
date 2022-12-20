import 'dart:convert';
/// syncRows : [{"sync":{"id":296701,"operation":"UPDATE","timestamp":"2022-11-14T18:14:06.007"},"data":{"buildingId":"0ebc7020-dae1-4647-af02-01059d9b63d8","buildingNumber":"0298 HSSB","buildingName":"Health Care Support Services Building","buildingAbbr":"HSSB","address1":"","address2":"","city":"","state":"","postalCode":"","contactName":"","phone":"","email":"","comments":"","createdByUserId":"f2bc2d5d-c0e7-4bdc-8e94-b6c85908c489","createdByUserName":"mfister","createdAt":"2017-02-10T07:56:46.223","lastEditedByUserId":"9eab9bb2-a42e-4fde-1808-08d8b40838b4","lastEditedByUserName":"Mike","lastEditedAt":"2022-11-14T18:08:06.707","custom1Value":"","custom2Value":""}}]

AllDepartment allDepartmentFromJson(String str) => AllDepartment.fromJson(json.decode(str));
String allDepartmentToJson(AllDepartment data) => json.encode(data.toJson());
class AllDepartment {
  AllDepartment({
      List<SyncRows>? syncRows,}){
    _syncRows = syncRows;
}

  AllDepartment.fromJson(dynamic json) {
    if (json['syncRows'] != null) {
      _syncRows = [];
      json['syncRows'].forEach((v) {
        _syncRows?.add(SyncRows.fromJson(v));
      });
    }
  }
  List<SyncRows>? _syncRows;
AllDepartment copyWith({  List<SyncRows>? syncRows,
}) => AllDepartment(  syncRows: syncRows ?? _syncRows,
);
  List<SyncRows>? get syncRows => _syncRows;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_syncRows != null) {
      map['syncRows'] = _syncRows?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// sync : {"id":296701,"operation":"UPDATE","timestamp":"2022-11-14T18:14:06.007"}
/// data : {"buildingId":"0ebc7020-dae1-4647-af02-01059d9b63d8","buildingNumber":"0298 HSSB","buildingName":"Health Care Support Services Building","buildingAbbr":"HSSB","address1":"","address2":"","city":"","state":"","postalCode":"","contactName":"","phone":"","email":"","comments":"","createdByUserId":"f2bc2d5d-c0e7-4bdc-8e94-b6c85908c489","createdByUserName":"mfister","createdAt":"2017-02-10T07:56:46.223","lastEditedByUserId":"9eab9bb2-a42e-4fde-1808-08d8b40838b4","lastEditedByUserName":"Mike","lastEditedAt":"2022-11-14T18:08:06.707","custom1Value":"","custom2Value":""}

SyncRows syncRowsFromJson(String str) => SyncRows.fromJson(json.decode(str));
String syncRowsToJson(SyncRows data) => json.encode(data.toJson());
class SyncRows {
  SyncRows({
      Sync? sync, 
      Data? data,}){
    _sync = sync;
    _data = data;
}

  SyncRows.fromJson(dynamic json) {
    _sync = json['sync'] != null ? Sync.fromJson(json['sync']) : null;
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Sync? _sync;
  Data? _data;
SyncRows copyWith({  Sync? sync,
  Data? data,
}) => SyncRows(  sync: sync ?? _sync,
  data: data ?? _data,
);
  Sync? get sync => _sync;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_sync != null) {
      map['sync'] = _sync?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// buildingId : "0ebc7020-dae1-4647-af02-01059d9b63d8"
/// buildingNumber : "0298 HSSB"
/// buildingName : "Health Care Support Services Building"
/// buildingAbbr : "HSSB"
/// address1 : ""
/// address2 : ""
/// city : ""
/// state : ""
/// postalCode : ""
/// contactName : ""
/// phone : ""
/// email : ""
/// comments : ""
/// createdByUserId : "f2bc2d5d-c0e7-4bdc-8e94-b6c85908c489"
/// createdByUserName : "mfister"
/// createdAt : "2017-02-10T07:56:46.223"
/// lastEditedByUserId : "9eab9bb2-a42e-4fde-1808-08d8b40838b4"
/// lastEditedByUserName : "Mike"
/// lastEditedAt : "2022-11-14T18:08:06.707"
/// custom1Value : ""
/// custom2Value : ""

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? buildingId, 
      String? buildingNumber, 
      String? buildingName, 
      String? buildingAbbr, 
      String? address1, 
      String? address2, 
      String? city, 
      String? state, 
      String? postalCode, 
      String? contactName, 
      String? phone, 
      String? email, 
      String? comments, 
      String? createdByUserId, 
      String? createdByUserName, 
      String? createdAt, 
      String? lastEditedByUserId, 
      String? lastEditedByUserName, 
      String? lastEditedAt, 
      String? custom1Value, 
      String? custom2Value,}){
    _buildingId = buildingId;
    _buildingNumber = buildingNumber;
    _buildingName = buildingName;
    _buildingAbbr = buildingAbbr;
    _address1 = address1;
    _address2 = address2;
    _city = city;
    _state = state;
    _postalCode = postalCode;
    _contactName = contactName;
    _phone = phone;
    _email = email;
    _comments = comments;
    _createdByUserId = createdByUserId;
    _createdByUserName = createdByUserName;
    _createdAt = createdAt;
    _lastEditedByUserId = lastEditedByUserId;
    _lastEditedByUserName = lastEditedByUserName;
    _lastEditedAt = lastEditedAt;
    _custom1Value = custom1Value;
    _custom2Value = custom2Value;
}

  Data.fromJson(dynamic json) {
    _buildingId = json['buildingId'];
    _buildingNumber = json['buildingNumber'];
    _buildingName = json['buildingName'];
    _buildingAbbr = json['buildingAbbr'];
    _address1 = json['address1'];
    _address2 = json['address2'];
    _city = json['city'];
    _state = json['state'];
    _postalCode = json['postalCode'];
    _contactName = json['contactName'];
    _phone = json['phone'];
    _email = json['email'];
    _comments = json['comments'];
    _createdByUserId = json['createdByUserId'];
    _createdByUserName = json['createdByUserName'];
    _createdAt = json['createdAt'];
    _lastEditedByUserId = json['lastEditedByUserId'];
    _lastEditedByUserName = json['lastEditedByUserName'];
    _lastEditedAt = json['lastEditedAt'];
    _custom1Value = json['custom1Value'];
    _custom2Value = json['custom2Value'];
  }
  String? _buildingId;
  String? _buildingNumber;
  String? _buildingName;
  String? _buildingAbbr;
  String? _address1;
  String? _address2;
  String? _city;
  String? _state;
  String? _postalCode;
  String? _contactName;
  String? _phone;
  String? _email;
  String? _comments;
  String? _createdByUserId;
  String? _createdByUserName;
  String? _createdAt;
  String? _lastEditedByUserId;
  String? _lastEditedByUserName;
  String? _lastEditedAt;
  String? _custom1Value;
  String? _custom2Value;
Data copyWith({  String? buildingId,
  String? buildingNumber,
  String? buildingName,
  String? buildingAbbr,
  String? address1,
  String? address2,
  String? city,
  String? state,
  String? postalCode,
  String? contactName,
  String? phone,
  String? email,
  String? comments,
  String? createdByUserId,
  String? createdByUserName,
  String? createdAt,
  String? lastEditedByUserId,
  String? lastEditedByUserName,
  String? lastEditedAt,
  String? custom1Value,
  String? custom2Value,
}) => Data(  buildingId: buildingId ?? _buildingId,
  buildingNumber: buildingNumber ?? _buildingNumber,
  buildingName: buildingName ?? _buildingName,
  buildingAbbr: buildingAbbr ?? _buildingAbbr,
  address1: address1 ?? _address1,
  address2: address2 ?? _address2,
  city: city ?? _city,
  state: state ?? _state,
  postalCode: postalCode ?? _postalCode,
  contactName: contactName ?? _contactName,
  phone: phone ?? _phone,
  email: email ?? _email,
  comments: comments ?? _comments,
  createdByUserId: createdByUserId ?? _createdByUserId,
  createdByUserName: createdByUserName ?? _createdByUserName,
  createdAt: createdAt ?? _createdAt,
  lastEditedByUserId: lastEditedByUserId ?? _lastEditedByUserId,
  lastEditedByUserName: lastEditedByUserName ?? _lastEditedByUserName,
  lastEditedAt: lastEditedAt ?? _lastEditedAt,
  custom1Value: custom1Value ?? _custom1Value,
  custom2Value: custom2Value ?? _custom2Value,
);
  String? get buildingId => _buildingId;
  String? get buildingNumber => _buildingNumber;
  String? get buildingName => _buildingName;
  String? get buildingAbbr => _buildingAbbr;
  String? get address1 => _address1;
  String? get address2 => _address2;
  String? get city => _city;
  String? get state => _state;
  String? get postalCode => _postalCode;
  String? get contactName => _contactName;
  String? get phone => _phone;
  String? get email => _email;
  String? get comments => _comments;
  String? get createdByUserId => _createdByUserId;
  String? get createdByUserName => _createdByUserName;
  String? get createdAt => _createdAt;
  String? get lastEditedByUserId => _lastEditedByUserId;
  String? get lastEditedByUserName => _lastEditedByUserName;
  String? get lastEditedAt => _lastEditedAt;
  String? get custom1Value => _custom1Value;
  String? get custom2Value => _custom2Value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['buildingId'] = _buildingId;
    map['buildingNumber'] = _buildingNumber;
    map['buildingName'] = _buildingName;
    map['buildingAbbr'] = _buildingAbbr;
    map['address1'] = _address1;
    map['address2'] = _address2;
    map['city'] = _city;
    map['state'] = _state;
    map['postalCode'] = _postalCode;
    map['contactName'] = _contactName;
    map['phone'] = _phone;
    map['email'] = _email;
    map['comments'] = _comments;
    map['createdByUserId'] = _createdByUserId;
    map['createdByUserName'] = _createdByUserName;
    map['createdAt'] = _createdAt;
    map['lastEditedByUserId'] = _lastEditedByUserId;
    map['lastEditedByUserName'] = _lastEditedByUserName;
    map['lastEditedAt'] = _lastEditedAt;
    map['custom1Value'] = _custom1Value;
    map['custom2Value'] = _custom2Value;
    return map;
  }

}

/// id : 296701
/// operation : "UPDATE"
/// timestamp : "2022-11-14T18:14:06.007"

Sync syncFromJson(String str) => Sync.fromJson(json.decode(str));
String syncToJson(Sync data) => json.encode(data.toJson());
class Sync {
  Sync({
      num? id, 
      String? operation, 
      String? timestamp,}){
    _id = id;
    _operation = operation;
    _timestamp = timestamp;
}

  Sync.fromJson(dynamic json) {
    _id = json['id'];
    _operation = json['operation'];
    _timestamp = json['timestamp'];
  }
  num? _id;
  String? _operation;
  String? _timestamp;
Sync copyWith({  num? id,
  String? operation,
  String? timestamp,
}) => Sync(  id: id ?? _id,
  operation: operation ?? _operation,
  timestamp: timestamp ?? _timestamp,
);
  num? get id => _id;
  String? get operation => _operation;
  String? get timestamp => _timestamp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['operation'] = _operation;
    map['timestamp'] = _timestamp;
    return map;
  }

}