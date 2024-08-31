import 'dart:convert';

User welcomeFromJson(String str) => User.fromJson(json.decode(str));

String welcomeToJson(User data) => json.encode(data.toJson());

class User {
  userModel user;

  User({
    required this.user,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        user: userModel.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
      };
}

class userModel {
  String id;
  String userName;
  String name;
  String role;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  userModel({
    required this.id,
    required this.userName,
    required this.name,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory userModel.fromJson(Map<String, dynamic> json) => userModel(
        id: json["_id"],
        userName: json["user_name"],
        name: json["name"],
        role: json["role"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user_name": userName,
        "name": name,
        "role": role,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
