import 'dart:convert';

import 'package:take_a_break/models/room.dart';

Booking bookingFromJson(String str) => Booking.fromJson(json.decode(str));

String bookingToJson(Booking data) => json.encode(data.toJson());

class Booking {
  Booking(
      {required this.endDate,
      required this.idRoom,
      required this.idUser,
      required this.idBooking,
      required this.startDate,
      required this.state,
      this.room});

  final String endDate;
  final String idRoom;
  final String idUser;
  final String idBooking;
  final String startDate;
  final String state;
  Room? room;

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        endDate: json["end-date"].toString(),
        idRoom: json["id-room"].toString(),
        idUser: json["id-user"].toString(),
        idBooking: json["idBooking"].toString(),
        startDate: json["start-date"].toString(),
        state: json["state"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "end-date": endDate,
        "id-room": idRoom,
        "id-user": idUser,
        "idBooking": idBooking,
        "start-date": startDate,
      };
}
