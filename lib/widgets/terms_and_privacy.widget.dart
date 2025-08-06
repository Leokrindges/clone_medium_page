import 'package:flutter/material.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        text: 'By signing up, you agree to our ',
        style: TextStyle(fontSize: 15, color: Colors.grey),
        children: <TextSpan>[
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(
              color: Colors.green,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(text: ' and acknowledge that our'),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyle(
              color: Colors.green,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(text: ' applies to you.'),
        ],
      ),
    );
  }
}
