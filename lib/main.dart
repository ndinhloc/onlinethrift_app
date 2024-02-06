import 'package:ecommerce_app/home_page.dart';
import 'package:ecommerce_app/login_page.dart';
import 'package:ecommerce_app/sign_up_page.dart';
import 'package:ecommerce_app/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: const Color(0xFF685bb3),
          highlightColor: const Color(0xFF423873),
          textTheme: TextTheme(
              displayLarge:
                  TextStyle(fontSize: 26, color: Colors.grey.shade900),
              displayMedium:
                  (TextStyle(fontSize: 16, color: Colors.grey.shade700))),
          fontFamily: 'Poppins',
          colorScheme: const ColorScheme(
              background: Color(0xFFEEEEEE),
              brightness: Brightness.light,
              primary: Color(0xFF685bb3),
              onPrimary: Color(0xFF423873),
              secondary: Color(0xFF423873),
              onSecondary: Color(0xFF685bb3),
              error: Color(0xFFEEEEEE),
              onError: Color(0xFFEEEEEE),
              onBackground: Color(0xFF685bb3),
              surface: Color(0xFFEEEEEE),
              onSurface: Color(0xFF685bb3))),
      home: SignUpPage(),
    );
  }
}
