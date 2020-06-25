import 'package:flutter/widgets.dart';
import 'package:flutter_sign_in/views/introduction/introduction_view.dart';

abstract class Routes {
  static const introduction = '/';

  static Map<String, WidgetBuilder> create() {
    return {
      introduction: (ctx) => IntroductionView(),
    };
  }
}
