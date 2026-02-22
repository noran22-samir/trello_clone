import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthService {
  // hash password using SHA-256
  String _hashPass(String password) {
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);
    return digest.toString();
  }

  final _userBox = Hive.box('users');

  // register a new user
  Future<String?> register(String email, String password) async {
    if (_userBox.containsKey(email)) {
      return 'Email already registered';
    }

    String hashPassword = _hashPass(password);
    await _userBox.put(email, hashPassword);
    return null;
  }

  // login user
  Future<bool> login(String email, String password) async {
    if (!_userBox.containsKey(email)) {
      return false;
    }
    String storedHash = _userBox.get(email);
    String userPass = _hashPass(password);

    if (storedHash == userPass) {
      return true;
    }
    else {
      return false;
    }
  }

  final _settingsBox = Hive.box('settings');

  // save logged in user email
  void setLoggedIn(bool status){
    _settingsBox.put('loggedIn', status);
  }
  bool checkLogin(){
    return _settingsBox.get('loggedIn', defaultValue: false);
  }

  // logout user
  Future<void> logout() async {
    var settingsBox = Hive.box('settings');
    await settingsBox.put('loggedIn', false);
  }
}
