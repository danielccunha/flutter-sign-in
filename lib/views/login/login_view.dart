import 'package:flutter/material.dart';
import 'package:flutter_sign_in/views/login/widgets/login_form.dart';
import 'package:flutter_sign_in/widgets/default_flat_button.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: mediaQuery.size.height),
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: mediaQuery.viewPadding.top,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Spacer(flex: 2),
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 200,
                ),
                const Spacer(flex: 1),
                LoginForm(),
                Align(
                  alignment: Alignment.centerRight,
                  child: DefaultFlatButton(
                    onPressed: () {},
                    content: 'Forgot your password?',
                  ),
                ),
                const Spacer(flex: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Doesn't have an account?"),
                    DefaultFlatButton(
                      onPressed: () {},
                      content: 'Register',
                      color: theme.primaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
