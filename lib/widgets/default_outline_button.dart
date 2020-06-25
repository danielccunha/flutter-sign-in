import 'package:flutter/material.dart';

class DefaultOutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;
  final Color color;

  const DefaultOutlineButton({
    Key key,
    @required this.onPressed,
    @required this.content,
    this.color,
  })  : assert(content != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonColor = color ?? theme.primaryColor;

    return OutlineButton(
      onPressed: this.onPressed,
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      textColor: buttonColor,
      borderSide: BorderSide(
        color: buttonColor,
      ),
      highlightedBorderColor: buttonColor,
    );
  }
}
