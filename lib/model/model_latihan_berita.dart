// To parse this JSON data, do
//
//     final modelLatihanBerita = modelLatihanBeritaFromJson(jsonString);

import 'dart:convert';

ModelLatihanBerita modelLatihanBeritaFromJson(String str) => ModelLatihanBerita.fromJson(json.decode(str));

String modelLatihanBeritaToJson(ModelLatihanBerita data) => json.encode(data.toJson());

class ModelLatihanBerita {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelLatihanBerita({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelLatihanBerita.fromJson(Map<String, dynamic> json) => ModelLatihanBerita(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String judul;
  String konten;
  String gambar;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.judul,
    required this.konten,
    required this.gambar,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    judul: json["judul"],
    konten: json["konten"],
    gambar: json["gambar"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "judul": judul,
    "konten": konten,
    "gambar": gambar,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
