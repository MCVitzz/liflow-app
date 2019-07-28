import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:http/http.dart' as http;
import 'package:password/password.dart';

import './api.dart';

class User {
  static final String _tokenName = "userToken";

  String username;
  String password;
  String email;
  String firstName;
  String lastName;

  User.register({this.username, password, this.email, this.firstName, this.lastName}) {
    _createPassword(password);
  }

  User.login(this.username, String password) {
    _createPassword(password);
  }

  Future<bool> authenticate() async {
    http.Response res = await API.get('users/get?username=' + username);
    print(res.body);
    return false;
  }

  void _createPassword(password){
    password = Password.hash(password, PBKDF2());
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