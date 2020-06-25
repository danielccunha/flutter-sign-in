import 'package:flutter/material.dart';
import 'package:flutter_sign_in/routes.dart';
import 'package:flutter_sign_in/styles/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pandora',
      routes: Routes.create(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.create(context),
    );
  }
}
