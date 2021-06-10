import 'dart:convert';

Register RegisterFromJson(String str) => Register.fromJson(json.decode(str));

String RegisterToJson(Register data) => json.encode(data.toJson());

class Register {
  Register({
    required this.email,
    required this.name,
    required this.verifyToken,
    required this.device,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  String email;
  String name;
  String verifyToken;
  String device;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory Register.fromJson(Map<String, dynamic> json) => Register(
        email: json["email"],
        name: json["name"],
        verifyToken: json["verify_token"],
        device: json["device"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
        "verify_token": verifyToken,
        "device": device,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
