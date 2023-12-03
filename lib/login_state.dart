import 'package:flutter/foundation.dart';
import 'package:my_trainer/view_models/users_viewmodel.dart';

class LoginState extends ChangeNotifier {
  // final Map<String, Object> _myMap = {};
  // void setValue({required String key, required Object value}) {
  //   _myMap[key] = value;
  //   notifyListeners();
  // }
  // Object? getValue({required String key}) {
  //   return _myMap[key];
  // }
  User? _user;

  User? get user => _user;
  void setUser(User newUser) {
    _user = newUser;
    notifyListeners();
  }
}