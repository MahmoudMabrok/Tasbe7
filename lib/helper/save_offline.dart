import 'package:shared_preferences/shared_preferences.dart';

class SaveOffline{

  static void savePraiseOffline(String name , int value) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.setInt(name, value);
    if(prefs.containsKey("praisesNames") == true){
      print('True');
      List<String> praisesNames = prefs.getStringList('praisesNames');
      praisesNames.add(name);
      prefs.setStringList('praisesNames', praisesNames);
    } else {
      print('False');
      List<String> praisesNames = [];
      praisesNames.add(name);
      prefs.setStringList('praisesNames', praisesNames);
    }
  }

  static Future<int> getPraisevalue(String praisesNames) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    int value = prefs.getInt(praisesNames);
    return value;
  }

  static Future<List<String>> getPraiseList() async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    List<String> value = prefs.getStringList('praisesNames');
    return value;
  }

  static void removePraise(String name) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.remove(name);
    List<String> praisesNames = prefs.getStringList('praisesNames');
    praisesNames.remove(name);
    prefs.setStringList('praisesNames', praisesNames);
    for(int i=0;i<praisesNames.length;i++){
      print(praisesNames[i]);
    }
  }

  static void editPraise(String oldName , String newName , int newValue) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.remove(oldName);
    prefs.setInt(newName, newValue);
    List<String> praisesNames = prefs.getStringList('praisesNames');
    var index = praisesNames.indexOf(oldName);
    praisesNames.replaceRange(index, index+1, [newName]);
    prefs.setStringList('praisesNames', praisesNames);
    print(praisesNames);
  }

  static Future<int> firstTimecheck() async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    if(prefs.containsKey("praisesNames") == true){
      return 1;
    } else {
      return 0;
    }
  }
}