import 'package:flutter/material.dart';
import 'dart:convert';
import '../models/room.dart';
import '../services/api_service.dart';

class RoomsProvider with ChangeNotifier {
  final apiService = ApiService();
  List<Room> roomList = [];
  RoomsProvider() {
    getAllRoms();
  }
  getAllRoms() async {
    print("Getting all rooms");
    final result = await apiService.getAllRoms();
    final Map<String, dynamic> roomsMap = json.decode(result);
    roomList = roomsMap
        .map(
          (key, value) => MapEntry(
            key,
            Room.fromJson(value),
          ),
        )
        .values
        .toList();

    notifyListeners();
    print(roomList.length);
  }
}
