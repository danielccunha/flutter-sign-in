import 'package:flutter/material.dart';

class DefaultRaisedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;
  final Color color;
  final Color textColor;

  const DefaultRaisedButton({
    Key key,
    @required this.onPressed,
    @required this.content,
    this.color,
    this.textColor,
  })  : assert(content != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RaisedButton(
      onPressed: this.onPressed,
      textTheme: ButtonTextTheme.primary,
      color: color ?? theme.primaryColor,
      textColor: textColor,
      child: Text(
        content,
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }
}
