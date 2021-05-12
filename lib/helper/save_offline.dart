import 'package:shared_preferences/shared_preferences.dart';

class SaveOffline{

  static void saveTokenOffline(String name , int value) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.setString('name', name);
    prefs.setInt('value', value);
  }

  static void savePraiseListOffline(List<String> praisesNames) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.setStringList('praisesNames', praisesNames);
  }

  static Future<int> getPraisevalue(List<String> praisesNames) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    int value = prefs.getInt('value');
    return value;
  }

  static Future<List<String>> getPraiseList(List<String> praisesNames) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    List<String> value = prefs.getStringList('praisesNames');
    return value;
  }
}