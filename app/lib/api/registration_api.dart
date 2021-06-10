import 'package:app/components/registration.dart';
import 'package:app/model/registration_model.dart';
import 'package:http/http.dart' as http;

Future<Register?> createUser(
    String email, String name, String password, String device) async {
  final String Url = "https://buytarkari.sambatshree.com/api/register";
  final response = await http.post(
      Uri.parse("https://buytarkari.sambatshree.com/api/register"),
      body: {
        "name": name,
        "email": email,
        "password": password,
        "device": device,
      });
  if (response.statusCode == 200) {
    final String responseString = response.body;
    return RegisterFromJson(responseString);
  } else {
    return null;
  }
}
