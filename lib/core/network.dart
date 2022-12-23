import 'package:http/http.dart' as http;

class NetworkManager {
  static final NetworkManager _instance = NetworkManager._();

  factory NetworkManager() {
    return _instance;
  }

  NetworkManager._();

  Future<http.Response> get(String url, {Map<String, String>? headers}) async {
    return http.get(
      Uri.parse(url),
      headers: headers,
    );
  }
}
