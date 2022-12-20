import 'package:flutter/material.dart';
import 'package:tutorial/constant/colors.dart';
import 'flight_info.dart';
import 'ticket.dart';

class FlightBookingPage extends StatelessWidget {
  const FlightBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kFlightBookingColorPrimary,
        leading: const Icon(Icons.navigate_before),
      ),
      body: Column(
        children: [
          const FlightInfo(),
          const TicketList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
