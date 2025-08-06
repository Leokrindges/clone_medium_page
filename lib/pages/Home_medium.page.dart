import 'package:clone_medium_page/widgets/social_button.widgets.dart';
import 'package:clone_medium_page/widgets/terms_and_privacy.widget.dart';
import 'package:flutter/material.dart';

class HomeMediumPage extends StatelessWidget {
  const HomeMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/medium.png',
                width: 60,
                height: 60,
                key: const ValueKey('ImagemMedium'),
              ),
              Spacer(flex: 2),
              Text(
                'Join Medium.',
                style: TextStyle(fontSize: 45),
                textAlign: TextAlign.center,
                key: const ValueKey('TextTitle'),
              ),
              SizedBox(height: 50),
              SocialButton(
                imagePath: 'assets/images/google.png',
                buttonText: 'Sign up with Google',
                key: const ValueKey('SignupGoogle'),
              ),
              SizedBox(height: 15),
              SocialButton(
                imagePath: 'assets/images/email.png',
                buttonText: 'Sign up with Email',
                key: const ValueKey('SignupEmail'),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      key: const ValueKey('DividerLeft'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or, sign up with',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      key: const ValueKey('DividerRight'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Center(
                key: const ValueKey('buttonFacebook'),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(99),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(99)),
                    ),
                    height: 55,
                    width: 55,
                    child: Center(
                      child: Center(
                        child: Image.asset(
                          'assets/images/facebook.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(flex: 3),
              TermsAndPrivacy(),
            ],
          ),
        ),
      ),
    );
  }
}
