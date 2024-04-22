import 'package:shared_preferences/shared_preferences.dart';

class SessionLatihanManager{
  int? value;
  String? idUser, userName, fullname, email;

  // Simpan session
  Future<void> saveSession(int val, String id, String username, String fullname, String email) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt("value", val);
    sharedPreferences.setString("id", id);
    sharedPreferences.setString("username", username);
    sharedPreferences.setString("fullname", fullname);
    sharedPreferences.setString("email", email);
  }

  //Get session
  Future getSession() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    value = sharedPreferences.getInt("value");
    idUser = sharedPreferences.getString("id");
    userName = sharedPreferences.getString("username");
    fullname = sharedPreferences.getString("fullname");
    email = sharedPreferences.getString("email");
    return value;
  }

  //Clear session --> untuk logout
  Future clearSession() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }
}
SessionLatihanManager session = SessionLatihanManager();

