import 'package:http/http.dart' as http;
//import 'dart:ffi';
import 'dart:convert';
import 'package:app/model/login_model.dart';

class APIService {
  Future<LoginResponseModel> login(LogInRequestModel requestModel) async {
    String url = "https://buytarkari.sambatshree.com/api/login";

    final response = await http.post(
        Uri.parse("https://buytarkari.sambatshree.com/api/login"),
        body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
