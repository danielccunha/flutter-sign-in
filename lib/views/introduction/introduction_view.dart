import 'package:flutter/material.dart';
import 'package:flutter_sign_in/widgets/default_outline_button.dart';
import 'package:flutter_sign_in/widgets/default_raised_button.dart';

class IntroductionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DefaultRaisedButton(
              onPressed: () {},
              content: 'Raised Button',
            ),
            const SizedBox(height: 8.0),
            DefaultOutlineButton(
              onPressed: () {},
              content: 'Outline Button',
            ),
          ],
        ),
      ),
    );
  }
}
