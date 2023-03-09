import "package:flutter/material.dart";
import "components/rounded_btns.dart";
import "package:animated_text_kit/animated_text_kit.dart";

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/otp.jpg'),
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Verification',
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w900,
                        ),
                        speed: Duration(milliseconds: 500)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            WelcomeScreenBtns(
              colour: Colors.lightBlueAccent,
              label: 'Log In',
              onpress: () {
                Navigator.pushNamed(context, 'phone');
              },
            ),
            WelcomeScreenBtns(
              label: 'Register',
              colour: Colors.blueAccent,
              onpress: () {
                Navigator.pushNamed(context, 'phone');
              },
            )
          ],
        ),
      ),
    );
  }
}
