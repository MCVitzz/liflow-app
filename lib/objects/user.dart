import 'package:flutter_keychain/flutter_keychain.dart';

import 'dart:math';

class User {
  static final String _tokenName = "userToken";

  String username;
  String password;
  String passwordSalt;
  String email;
  String firstName;
  String lastName;

  User.register(username, password) {

  }

  String _createPassword(password){
    
  }

  Future<void> saveToken(token) async {
    await FlutterKeychain.put(key: _tokenName, value: token);
  }

  Future<bool> isAuthenticated() async {
    return await FlutterKeychain.get(key: _tokenName) == null ? true : false;
  }

  Future<void> deleteToken() async {
    await FlutterKeychain.remove(key: _tokenName);
  }
}