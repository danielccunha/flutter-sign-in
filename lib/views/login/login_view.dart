import 'package:flutter/material.dart';
import 'package:flutter_sign_in/routes.dart';
import 'package:flutter_sign_in/views/login/widgets/login_form.dart';
import 'package:flutter_sign_in/widgets/default_flat_button.dart';
import 'package:flutter_sign_in/widgets/default_outline_button.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: LayoutBuilder(
        builder: (ctx, cons) => SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: cons.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      onPressed: () => Navigator.of(context).pushNamed(Routes.forgotPassword),
                      content: 'Forgot your password?',
                    ),
                  ),
                  const Spacer(flex: 4),
                  DefaultOutlineButton(
                    onPressed: () => Navigator.of(context).pushNamed(Routes.register),
                    content: 'Register',
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
