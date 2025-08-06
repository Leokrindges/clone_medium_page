import 'package:clone_medium_page/widgets/social_button.widgets.dart';
import 'package:flutter/material.dart';

class HomeMediumPage extends StatelessWidget {
  const HomeMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/medium.png', width: 60, height: 60),
              Text(
                'Join Medium',
                style: TextStyle(fontSize: 50),
                textAlign: TextAlign.center,
              ),
              SocialButton(
                imagePath: 'assets/images/google.png',
                buttonText: 'Sign up with Google',
              ),
              SizedBox(height: 15),
              SocialButton(
                imagePath: 'assets/images/email.png',
                buttonText: 'Sign up with Email',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
