class UserModel {
  String? username;
  String? password; // Nullable field
  String? token;

  UserModel({
    required this.username,
    required this.password, // Nullable field
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    token = json['token'];
  }

  //untuk model dijadikan ke json
  Map<String, dynamic> toJson() {
    return {'username': username, 'password': password, 'token': token};
  }
}
