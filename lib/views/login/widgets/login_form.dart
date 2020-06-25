import 'package:flutter/material.dart';
import 'package:flutter_sign_in/widgets/default_raised_button.dart';

class LoginForm extends StatelessWidget {
  final _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(labelText: 'Email'),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (value) => FocusScope.of(context).requestFocus(_passwordFocusNode),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
            focusNode: _passwordFocusNode,
          ),
          const SizedBox(height: 8.0),
          DefaultRaisedButton(
            onPressed: () {},
            content: 'Login',
          ),
        ],
      ),
    );
  }
}
