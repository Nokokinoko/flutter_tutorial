import 'package:flutter/material.dart';
import 'package:tutorial/admin_mobile/admin_mobile.dart';

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
      theme: ThemeData.light(),
      home: const AdminMobilePage(),
    );
  }
}
