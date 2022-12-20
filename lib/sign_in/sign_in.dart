import 'package:flutter/material.dart';
import 'package:tutorial/constant/colors.dart';
import 'header.dart';
import 'form.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSignInBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: SignInForm(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 64),
                child: Footer(),
              ),
            ],
          ),
        ),
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
