class UserModel {
  String? id;
  String? name;
  String? email;
  String? profilePic;

  UserModel({this.id, this.name, this.email, this.profilePic});

  UserModel.fromJson(json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    profilePic = json['profilePic'];
  }
}
