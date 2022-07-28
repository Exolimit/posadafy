// To parse this JSON data, do
//
//     final rooms = roomsFromJson(jsonString);

import 'dart:convert';

import 'room.dart';

Rooms roomsFromJson(String str) => Rooms.fromJson(json.decode(str));

String roomsToJson(Rooms data) => json.encode(data.toJson());

class Rooms {
  Rooms({
    required this.room,
  });

  final Room room;

  factory Rooms.fromJson(Map<String, dynamic> json) => Rooms(
        room: Room.fromJson(json["room"]),
      );

  Map<String, dynamic> toJson() => {
        "room": room.toJson(),
      };
}
