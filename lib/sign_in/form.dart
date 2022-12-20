import 'package:flutter/material.dart';
import 'package:tutorial/constant/colors.dart';

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
      style: const TextStyle(color: kSignInTextColorPrimary),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: kSignInTextColorPrimary),
        hintText: hintText,
        hintStyle: const TextStyle(color: kSignInTextColorSecondary),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: kSignInAccentColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: kSignInTextColorSecondary,
          ),
        ),
      ),
      obscureText: obscureText,
      onTap: () {},
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

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
              .copyWith(color: kSignInTextColorSecondary),
        ),
        const SizedBox(height: 48),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: kSignInButtonTextColorPrimary,
              backgroundColor: kSignInButtonColorPrimary,
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
                  .copyWith(color: kSignInButtonTextColorPrimary, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'OR',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kSignInTextColorSecondary),
        ),
        const SizedBox(height: 16),
        Text(
          'Connect with',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kSignInTextColorPrimary),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.account_circle),
              color: kSignInTextColorPrimary,
              onPressed: () {},
            ),
            Container(
              color: kSignInTextColorSecondary,
              width: 1,
              height: 16,
            ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              color: kSignInTextColorPrimary,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

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
              .copyWith(color: kSignInTextColorSecondary),
        ),
        const SizedBox(width: 4),
        Text(
          'Sign up',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kSignInTextColorPrimary),
        ),
      ],
    );
  }
}
