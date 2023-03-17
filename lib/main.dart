import 'package:flutter/material.dart';
import 'package:intro_screen_app/screens/homepage.dart';
import 'package:intro_screen_app/screens/intropage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? isStart = prefs.getBool('isStart') ?? false;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (isStart == true) ? '/' : 'intro',
      routes: {
        '/': (context) => const HomePage(),
        'intro': (context) => const IntroPage(),
      },
    ),
  );
}
