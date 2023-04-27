import 'dart:convert';

import 'package:http/http.dart' as http;

class ReverseGeocodingApi {
  static Future<dynamic> getReverseData(String url) async {
    http.Response response = await http.get(Uri.parse(url));

    try {
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body.toString());
        return responseData;
      } else {
        return "Something wrong";
      }
    } catch (ex) {
      return "Something wrong";
    }
  }
}
