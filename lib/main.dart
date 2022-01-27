import 'package:first/pages/home_page.dart';
import 'package:first/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.indigo),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      routes: {
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
