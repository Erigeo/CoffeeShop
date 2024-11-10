import 'package:coffee_store/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final List<User> _users = [
    User(
      id: '1',
      fname: 'John',
      lname: 'Doe',
      email: 'john.doe@example.com',
    )
  ];

  List<User> get users => _users;

  void addUser(User user) {
    _users.add(user);
    notifyListeners();
  }
}
