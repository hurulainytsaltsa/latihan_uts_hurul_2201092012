// To parse this JSON data, do
//
//     final modelLatihanLogin = modelLatihanLoginFromJson(jsonString);

import 'dart:convert';

ModelLatihanLogin modelLatihanLoginFromJson(String str) => ModelLatihanLogin.fromJson(json.decode(str));

String modelLatihanLoginToJson(ModelLatihanLogin data) => json.encode(data.toJson());

class ModelLatihanLogin {
  int value;
  String message;
  String username;
  String fullname;
  String email;
  String id;

  ModelLatihanLogin({
    required this.value,
    required this.message,
    required this.username,
    required this.fullname,
    required this.email,
    required this.id,
  });

  factory ModelLatihanLogin.fromJson(Map<String, dynamic> json) => ModelLatihanLogin(
    value: json["value"],
    message: json["message"],
    username: json["username"],
    fullname: json["fullname"],
    email: json["email"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "message": message,
    "username": username,
    "fullname": fullname,
    "email": email,
    "id": id,
  };
}
