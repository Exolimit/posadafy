import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = "https://posadafy-default-rtdb.firebaseio.com";

  getAllRoms() async {
    final url = Uri.parse(baseUrl + "/room.json");
    final response = await http.get(url);
    return response.body;
  }

  getUserInfo(String uid) async {
    final url = Uri.parse(baseUrl + "/user/$uid.json");
    final response = await http.get(url);
    return response.body;
  }

  getAllBookings() async {
    final url = Uri.parse(baseUrl + "/booking.json");
    final response = await http.get(url);
    return response.body;
  }

  getRoomInfo(String id) async {
    final url = (baseUrl + "/room/$id.json");
    print(url);
    final Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    return response.body;
  }

  postBooking(data) async {
    final url = Uri.parse(baseUrl + "/booking.json");
    final response = await http.post(url, body: json.encode(data));
    return (response.body);
  }
}
