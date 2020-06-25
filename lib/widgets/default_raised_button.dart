import 'package:flutter/material.dart';

class DefaultRaisedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;

  const DefaultRaisedButton({
    Key key,
    @required this.onPressed,
    @required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RaisedButton(
      onPressed: this.onPressed,
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      textTheme: ButtonTextTheme.primary,
      color: theme.primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
    );
  }
}
