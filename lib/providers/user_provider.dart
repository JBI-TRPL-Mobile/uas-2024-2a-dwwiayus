import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/user_model.dart';
import 'package:flutter/foundation.dart';


class UserProvider with ChangeNotifier {
  List<User> _users = [];

  List<User> get users => _users;

  Future<void> loadUsers() async {
    final String response = await rootBundle.loadString('data/datauser.json');
    final data = json.decode(response) as List;
    _users = data.map((json) => User.fromJson(json)).toList();
    notifyListeners();
  }
}
