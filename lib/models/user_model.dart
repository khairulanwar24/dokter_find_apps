class UserModel {
  final String username;
  final String password; // Nullable field
  final String token;

  UserModel({
    required this.username,
    required this.password, // Nullable field
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        username: json['username'],
        password: json['password'],
        token: json['token']);
  }
}
