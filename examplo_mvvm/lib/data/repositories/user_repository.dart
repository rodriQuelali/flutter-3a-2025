import 'dart:convert';

import 'package:examplo_mvvm/data/model/user_model.dart';


import 'package:http/http.dart' as http;

class UserRepository {
  final String _apiUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> getUsers() async {
    final response = await http.get(Uri.parse(_apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}