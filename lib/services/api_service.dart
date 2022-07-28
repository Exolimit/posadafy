import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = "https://posadafy-default-rtdb.firebaseio.com";

  getAllRoms() async {
    final url = Uri.parse(baseUrl + "/room.json");
    final response = await http.get(url);
    return response.body;
  }
}
