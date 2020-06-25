import 'package:flutter/material.dart';
import 'package:flutter_sign_in/widgets/default_raised_button.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email', hintText: 'john.wick@gmail.com'),
            ),
            const SizedBox(height: 8.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password', hintText: '********'),
            ),
            const SizedBox(height: 8.0),
            DefaultRaisedButton(
              onPressed: () {},
              content: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
