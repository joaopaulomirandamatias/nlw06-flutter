import 'dart:convert';

class UserModel {
  final String name;
  final String photoURL;

  UserModel({this.name, this.photoURL});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photoURL: map['photoURL']);
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  Map<String, dynamic> toMap() => {
        "name": name,
        "photoURE": photoURL,
      };

  String toJson() => jsonEncode(toMap);
}