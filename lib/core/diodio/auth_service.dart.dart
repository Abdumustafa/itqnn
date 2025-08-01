import 'package:dio/dio.dart';

class AuthService {
final dio = Dio(
  BaseOptions(
    baseUrl: 'https://itqan-xa8m.vercel.app/',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
    headers: {
      'Content-Type': 'application/json',
    },
  ),
);


    Future<void> login(String email, String password) async {
    try {
      final response = await dio.post(
        '/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      print('Login Success: ${response.data}');
   
    } on DioException catch (e) {
      print('Login Error: ${e.response?.data}');
      rethrow;
    }
  }

  
  Future<void> registerCompany(Map<String, dynamic> data) async {
    try {
      final response = await dio.post('/register/company', data: data);
      print('Company Registered: ${response.data}');
    } on DioException catch (e) {
      print('Company Register Error: ${e.response?.data}');
      throw e;
    }
  }

  Future<void> registerEmployee(Map<String, dynamic> data) async {
    try {
      final response = await dio.post('/register/employee', data: data);
      print('Employee Registered: ${response.data}');
    } on DioException catch (e) {
      print('Employee Register Error: ${e.response?.data}');
      throw e;
    }
  }
}

