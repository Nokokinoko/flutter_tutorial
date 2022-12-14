import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tutorial/constant/colors.dart';

class _AirportName extends StatelessWidget {
  final String shortName;
  final String fullName;

  const _AirportName({
    Key? key,
    required this.shortName,
    required this.fullName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          shortName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
        Text(
          fullName,
          style: TextStyle(
            color: kFlightBookingTextColor.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}

class _FlightIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(
          color: kFlightBookingFlightIconColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(52 * 0.5),
      ),
      child: Transform.rotate(
        angle: pi * 0.5,
        child: const Icon(
          Icons.flight,
          color: kFlightBookingFlightIconColor,
          size: 28,
        ),
      ),
    );
  }
}

class FlightInfo extends StatelessWidget {
  const FlightInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: kFlightBookingColorPrimary,
          elevation: 24,
          shadowColor: kFlightBookingColorPrimary,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 16,
              bottom: 32,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const _AirportName(shortName: 'DHK', fullName: 'Dhaka'),
                    _FlightIcon(),
                    const _AirportName(shortName: 'LDN', fullName: 'London'),
                  ],
                ),
                const SizedBox(height: 32),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Monday, 18 May, 2020',
                    style: TextStyle(
                        color: kFlightBookingTextColor.withOpacity(0.8)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
