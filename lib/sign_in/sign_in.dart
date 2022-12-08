import 'package:flutter/material.dart';
import 'header.dart';
import 'form.dart';

const Color kBackgroundColor = Color(0xFF192830);

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SignInForm(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 64),
                child: Footer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
