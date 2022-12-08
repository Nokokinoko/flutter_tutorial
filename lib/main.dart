import 'package:flutter/material.dart';
import 'package:tutorial/admin_mobile/admin_mobile.dart';
import 'package:tutorial/sign_in/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xFFFE7C64))),
      home: const WelcomePage(),
    );
  }
}
