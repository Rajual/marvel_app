import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpsService {
  final Uri url;
  HttpsService({required this.url});

  Future<Map<String, dynamic>> get() async {
    print(url.path);
    final http.Response response = await http.get(url);
    final Map<String, dynamic> result =
        jsonDecode(response.body) as Map<String, dynamic>;
    return result;
  }
}
