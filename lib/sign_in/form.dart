import 'package:flutter/material.dart';

const Color kAccentColor = Color(0xFFFE7C64);
const Color kTextColorPrimary = Color(0xFFECEFF1);
const Color kTextColorSecondary = Color(0xFFB0BEC5);
const Color kButtonColorPrimary = Color(0xFFECEFF1);
const Color kButtonTextColorPrimary = Color(0xFF455A64);

class _CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;

  const _CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: const TextStyle(color: kTextColorSecondary),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: kAccentColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: kTextColorSecondary,
          ),
        ),
      ),
      obscureText: obscureText,
      onTap: () {},
    );
  }
}

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _CustomTextField(
          labelText: 'Email',
          hintText: 'your email address goes here',
          obscureText: false,
        ),
        const SizedBox(height: 48),
        const _CustomTextField(
          labelText: 'Password',
          hintText: 'your password goes here',
          obscureText: true,
        ),
        const SizedBox(height: 4),
        Text(
          'Forgot Password',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorSecondary),
        ),
        const SizedBox(height: 48),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: kButtonTextColorPrimary,
              backgroundColor: kButtonColorPrimary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Sign in',
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: kButtonColorPrimary, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'OR',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorSecondary),
        ),
        const SizedBox(height: 16),
        Text(
          'Connect with',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorPrimary),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
            Container(
              color: kTextColorSecondary,
              width: 1,
              height: 16,
            ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have Account?',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorSecondary),
        ),
        const SizedBox(width: 4),
        Text(
          'Sign up',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorPrimary),
        ),
      ],
    );
  }
}
