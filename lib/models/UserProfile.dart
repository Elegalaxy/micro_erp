
class UserProfile {
  final String uid;
  final String email;
  final String password;
  final String username;
  final String role;
  final DateTime createdOn;

  UserProfile({
    required this.uid,
    required this.email,
    required this.password,
    required this.username,
    required this.role,
    required this.createdOn,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      uid: json['uid'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      username: json['username'] as String,
      role: json['role'] as String,
      createdOn: DateTime.parse(json['created_on'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'password': password,
      'username': username,
      'role': role,
      'created_on': createdOn.toIso8601String(),
    };
  }
}
