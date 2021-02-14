import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {

  String baseUrl = "http://10.0.2.2:5000/api/commands/";

  Future<String> getClient(String url) async {
    print("NOENOENOENOE");
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body).toString();
    print(data);

    return data;
  }
}
