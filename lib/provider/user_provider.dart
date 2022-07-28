import 'dart:convert';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:take_a_break/models/booking.dart';
import 'package:take_a_break/services/api_service.dart';

import '../models/room.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  Client? client;
  List<Booking> bookingList = [];
  bool isBookingLoading = false;
  bool isLoged = false;
  bool isLoading = false;
  ApiService api = ApiService();

  set IsBookingLoading(bool value) {
    isBookingLoading = value;
    notifyListeners();
  }

  set IsLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  set IsLoged(bool value) {
    isLoged = value;
    notifyListeners();
  }

  loginUser(emailAddress, password) async {
    IsLoading = true;
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      IsLoading = false;
      getBookings();
      return {
        "status": true,
        "message": "Login correcto",
        "userUID": credential.user!.uid,
      };
    } on FirebaseAuthException catch (e) {
      IsLoading = false;
      if (e.code == 'user-not-found') {
        return {
          "status": false,
          "message": 'No se ha encontrado un usuario con ese correo',
        };
      } else if (e.code == 'wrong-password') {
        return {
          "status": false,
          "message": 'Verifique su contraseña',
        };
      }
    }
  }

  getUserData(String uid) async {
    try {
      IsLoading = true;
      final resp = await api.getUserInfo(uid);
      final decodedData = json.decode(resp);
      client = Client.fromJson(decodedData);
      IsLoading = false;
      IsLoged = true;
      return {
        "status": true,
        "message": "Datos obtenidos correctamente",
        "userData": resp,
      };
    } catch (e) {
      return {
        "status": false,
        "message":
            "Error al obtener los datos del usuario. Vuelva a intentarlo.",
      };
    }
  }

  getBookings() {
    bookingList = [];
    IsLoading = true;
    api.getAllBookings().then((value) async {
      final decodedData = json.decode(value);

      final Map<String, dynamic> roomsMap = decodedData;
      bookingList = roomsMap
          .map(
            (key, value) => MapEntry(
              key,
              Booking.fromJson(value),
            ),
          )
          .values
          .toList();

      for (var book in bookingList) {
        final res = await api.getRoomInfo(book.idRoom);

        final roomJson = json.decode(res);
        Room tempRoom = Room.fromJson(roomJson);
        book.room = tempRoom;
        // Booking tempBooking = Booking.fromJson(book);
        // tempBooking.room = tempRoom;
        // bookingList.add(tempBooking);

      }
      filterBookingByUser();
      notifyListeners();
    });
  }

  filterBookingByUser() {
    bookingList.removeWhere((element) => element.idUser != client?.idUser);
    IsLoading = false;
  }

  logoutUser() async {
    await FirebaseAuth.instance.signOut();
    IsLoged = false;
    notifyListeners();
  }

  postBooking(booking) async {
    IsBookingLoading = true;
    Random random = new Random();
    int randomNumber = random.nextInt(1000);
    final data = {
      "end-date": booking['end-date'].millisecondsSinceEpoch,
      "id-room": booking['id-room'].toString(),
      "id-user": booking['id-user'].toString(),
      "idBooking": randomNumber,
      "start-date": booking['start-date'].millisecondsSinceEpoch,
      "state": 0,
    };
    final res = await api.postBooking(data);
    IsBookingLoading = false;
    return true;
  }
}
