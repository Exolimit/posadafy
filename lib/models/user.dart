// To parse this JSON data, do
//
//     final Client = ClientFromJson(jsonString);

import 'dart:convert';

Client ClientFromJson(String str) => Client.fromJson(json.decode(str));

String ClientToJson(Client data) => json.encode(data.toJson());

class Client {
  Client(
      {required this.email,
      required this.nombres,
      required this.phone,
      required this.profilePicture,
      required this.idUser});

  final String email;
  final String nombres;
  final String phone;
  final String profilePicture;
  final String idUser;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        email: json["email"],
        nombres: json["nombres"],
        phone: json["phone"],
        profilePicture: json["profilePicture"],
        idUser: json["idUser"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "nombres": nombres,
        "phone": phone,
        "profilePicture": profilePicture,
      };
}
