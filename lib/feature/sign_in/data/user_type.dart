enum UserType { company, employee }

class UserModel {
  final String name;
  final UserType type;

  UserModel({required this.name, required this.type});
}
