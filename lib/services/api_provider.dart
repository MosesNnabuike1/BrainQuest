import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiProvider {
  static String baseUrl = 'https://opentdb.com/';
  static http.Client client = http.Client();

  Future get(String uri) async {
    print('$baseUrl$uri');
    log('$baseUrl$uri');
    try {
      // show a loader
      var response = await client.get(Uri.parse('$baseUrl$uri'));
      return handleResponse(response);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<dynamic> post(String url, Map data) async {
    try {
      var response = await client.post(Uri.parse('$baseUrl$url'), body: data);
      return handleResponse(response);
    } catch (e) {
      // hide the loader
      print(e);
      rethrow;
    }
  }
}

 dynamic handleResponse(http.Response response) {
  // hide the loader
  if (response.statusCode < 200 || response.statusCode > 400) {
    throw Exception("Error while fetching data");
  }

  return json.decode(response.body);
}
