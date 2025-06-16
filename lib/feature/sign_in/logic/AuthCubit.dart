import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itqan/feature/sign_in/data/user_type.dart';

class AuthCubit extends Cubit<UserModel?> {
  AuthCubit() : super(null);

  void loginAsCompany(String name) {
    emit(UserModel(name: name, type: UserType.company));
  }

  void loginAsEmployee(String name) {
    emit(UserModel(name: name, type: UserType.employee));
  }

  void logout() => emit(null);
}
