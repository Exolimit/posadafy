import 'package:meta/meta.dart';
import 'dart:convert';

Booking bookingFromJson(String str) => Booking.fromJson(json.decode(str));

String bookingToJson(Booking data) => json.encode(data.toJson());

class Booking {
    Booking({
        required this.endDate,
        required this.idRoom,
        required this.idUser,
        required this.idBooking,
        required this.startDate,
    });

    final int endDate;
    final String idRoom;
    final String idUser;
    final String idBooking;
    final int startDate;

    factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        endDate: json["end-date"],
        idRoom: json["id-room"],
        idUser: json["id-user"],
        idBooking: json["idBooking"],
        startDate: json["start-date"],
    );

    Map<String, dynamic> toJson() => {
        "end-date": endDate,
        "id-room": idRoom,
        "id-user": idUser,
        "idBooking": idBooking,
        "start-date": startDate,
    };
}
