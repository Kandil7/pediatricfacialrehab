class User {
  int? _id;
  String? email;
  String? password;

  User(this.email, this.password);

  User.fromMap(dynamic obj) {
    this.email = obj['username'];
    this.password = obj['password'];
  }

  // String? get email => email;
  // String? get password => password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["password"] = password;
    return map;
  }
}