import 'dart:convert';

class AddressModel {
  ProvinceLevel provinceLevel;
  DistrictLevel districtLevel;
  WardLevel wardLevel;
  String detail;
  bool isDefault;
  String customerName;
  String type;
  String phoneNumbers;

  AddressModel({
    required this.provinceLevel,
    required this.districtLevel,
    required this.wardLevel,
    required this.detail,
    required this.isDefault,
    required this.customerName,
    required this.type,
    required this.phoneNumbers,
  });
  factory AddressModel.fromRawJson(String str) =>
      AddressModel.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());
  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
        provinceLevel: ProvinceLevel.fromJson(json["provinceLevel"]),
        districtLevel: DistrictLevel.fromJson(json["districtLevel"]),
        wardLevel: WardLevel.fromJson(json["wardLevel"]),
        detail: json["detail"],
        isDefault: json["isDefault"] ?? false,
        customerName: json["customerName"],
        type: json['type'],
        phoneNumbers: json['phoneNumbers'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "provinceLevel": provinceLevel.toJson(),
        "districtLevel": districtLevel.toJson(),
        "wardLevel": wardLevel.toJson(),
        "detail": detail,
        "isDefault": isDefault,
        "customerName": customerName,
        "type": type,
        "phoneNumbers": phoneNumbers,
      };
}

class ProvinceLevel {
  int provinceId;
  String? provinceName;
  ProvinceLevel({required this.provinceId, this.provinceName});
  factory ProvinceLevel.fromRawJson(String str) =>
      ProvinceLevel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProvinceLevel.fromJson(Map<String, dynamic> json) => ProvinceLevel(
        provinceId: json["provinceId"] ?? 0,
        provinceName: json["provinceName"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "provinceId": provinceId,
        "provinceName": provinceName,
      };
}

class DistrictLevel {
  int districtId;
  String? districtName;
  DistrictLevel({required this.districtId, this.districtName});
  factory DistrictLevel.fromRawJson(String str) =>
      DistrictLevel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DistrictLevel.fromJson(Map<String, dynamic> json) => DistrictLevel(
        districtId: json["districtId"] ?? 0,
        districtName: json["districtName"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "districtId": districtId,
        "districtName": districtName,
      };
}

class WardLevel {
  String wardCode;
  String? wardName;
  WardLevel({required this.wardCode, this.wardName});
  factory WardLevel.fromRawJson(String str) =>
      WardLevel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WardLevel.fromJson(Map<String, dynamic> json) => WardLevel(
        wardCode: json["wardCode"] ?? '',
        wardName: json["wardName"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "wardCode": wardCode,
        "wardName": wardName,
      };
}
