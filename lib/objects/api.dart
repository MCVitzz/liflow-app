import 'package:http/http.dart' as http;

class API {
  static final String _baseURL = 'https://liflow.herokuapp.com/';

  static Future<http.Response> get(String url) async {
    print('--${_baseURL + url}');
    return await http.get(_baseURL + url);
  }
}