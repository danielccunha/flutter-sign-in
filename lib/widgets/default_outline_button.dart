import 'package:flutter/material.dart';

class DefaultOutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;

  const DefaultOutlineButton({
    Key key,
    @required this.onPressed,
    @required this.content,
  })  : assert(content != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return OutlineButton(
      onPressed: this.onPressed,
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      textColor: theme.primaryColor,
      borderSide: BorderSide(
        width: 1.5,
        color: theme.primaryColor,
      ),
    );
  }
}
