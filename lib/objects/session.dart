import 'package:Liflow/objects/user.dart';

class Session {
  static final Session _session = Session.internal();

  
  static User user;

  factory Session() {
    return _session;
  }

  Session.internal();

  void auth() {
    if(user == null) {
      user = User.login('Vasco', 'traquinas21');
      user.authenticate();
    }
  }
}