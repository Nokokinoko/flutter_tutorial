import 'package:flutter/material.dart';
import 'package:tutorial/constant/colors.dart';
import 'package:tutorial/admin_mobile/admin_mobile.dart';
import 'package:tutorial/sign_in/sign_in.dart';
import 'package:tutorial/battery_optimizer/battery_optimizer.dart';
import 'package:tutorial/flight_booking/flight_booking.dart';

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
      theme: ThemeData(
        primaryColor: const Color(0xFF2E8376),
      ),
      home: const FlightBookingPage(),
    );
  }
}
