class AuthModel {
  String? login;
  String? email;
  String? password;

  AuthModel({
    this.login,
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      "login": login,
      "email": email,
    };
  }
}
