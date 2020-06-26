import 'package:flutter/material.dart';
import 'package:flutter_sign_in/views/login/widgets/login_form.dart';
import 'package:flutter_sign_in/widgets/default_flat_button.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: LayoutBuilder(
        builder: (ctx, cons) => SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: cons.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  const Spacer(flex: 2),
                  SizedBox(height: mediaQuery.viewPadding.top),
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
      ),
    );
  }
}
