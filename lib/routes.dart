import 'package:flutter/widgets.dart';
import 'package:flutter_sign_in/views/forgot_password/forgot_password_view.dart';
import 'package:flutter_sign_in/views/login/login_view.dart';
import 'package:flutter_sign_in/views/register/register_view.dart';

abstract class Routes {
  static const introduction = '/';
  static const login = '/login';
  static const register = '/register';
  static const forgotPassword = '/forgot-password';

  static Map<String, WidgetBuilder> create() {
    return {
      login: (ctx) => LoginView(),
      register: (ctx) => RegisterView(),
      forgotPassword: (ctx) => ForgotPasswordView(),
    };
  }
}
