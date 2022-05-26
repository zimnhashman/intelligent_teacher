import 'package:shared_preferences/shared_preferences.dart';

class QuestionStorage {
  //Shared Preferences
  static saveQuestion3(String question3) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'question_3';
    final value = question3;
    prefs.setString(key, value);
  }

  static readQuestion3() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'question_3';
    final value = prefs.get(key) ?? null;
    print('read : $value');
  }

  static saveQuestion4(String question4) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'question_4';
    final value = question4;
    prefs.setString(key, value);
  }

  static readQuestion4() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'question_4';
    final value = prefs.get(key) ?? null;
    print('read : $value');
  }
}