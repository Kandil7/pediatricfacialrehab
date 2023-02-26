class UserModel {
  String? name;
  String? email;
  String? image;
  String? password;

  UserModel({
    this.name,
    this.email,
    this.image,
    this.password,
  });
  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    image = json['image'];
    password = json['password'];
  }
}
