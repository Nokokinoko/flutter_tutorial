import 'package:flutter/material.dart';
import 'flight_info.dart';
import 'ticket.dart';

class FlightBookingPage extends StatelessWidget {
  const FlightBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.navigate_before),
      ),
      body: Column(
        children: [
          const FlightInfo(),
          const TicketList(),
        ],
      ),
    );
  }
}
