import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void navigateTo(context, page,
    {bool keepHistory = true, bool isReplace = false}) {
  if (isReplace) {
    Navigator.pushReplacement(context, PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          FadeTransition(child: page, opacity: animation),
    ),);
  } else {
    Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              FadeTransition(child: page, opacity: animation),
        ),
        (route) => keepHistory);
  }
}


class SharedPreferencesHelper {
  static final String keyEmail = 'email';
  static final String keyPassword = 'password';

  // Save the email to shared preferences
  static Future<bool> saveEmail(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(keyEmail, email);
  }

  // Get the saved email from shared preferences
  static Future<String?> getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyEmail);
  }

  // Save the password to shared preferences
  static Future<bool> savePassword(String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(keyPassword, password);
  }

  // Get the saved password from shared preferences
  static Future<String?> getPassword() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyPassword);
  }
}

MaterialColor getMaterialColor(Color color) {
  final int red = color.red;
  final int green = color.green;
  final int blue = color.blue;
  final int alpha = color.alpha;

  final Map<int, Color> shades = {
    50: Color.fromARGB(alpha, red, green, blue),
    100: Color.fromARGB(alpha, red, green, blue),
    200: Color.fromARGB(alpha, red, green, blue),
    300: Color.fromARGB(alpha, red, green, blue),
    400: Color.fromARGB(alpha, red, green, blue),
    500: Color.fromARGB(alpha, red, green, blue),
    600: Color.fromARGB(alpha, red, green, blue),
    700: Color.fromARGB(alpha, red, green, blue),
    800: Color.fromARGB(alpha, red, green, blue),
    900: Color.fromARGB(alpha, red, green, blue),
  };

  return MaterialColor(color.value, shades);
}