import 'package:flutter/material.dart';

class DefaultFlatButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;
  final Color color;
  final EdgeInsets padding;

  const DefaultFlatButton({
    Key key,
    @required this.onPressed,
    @required this.content,
    this.color,
    this.padding = EdgeInsets.zero,
  })  : assert(content != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MaterialButton(
      onPressed: onPressed,
      child: Text(content),
      textColor: color ?? theme.textTheme.bodyText1.color,
      padding: padding,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      minWidth: 0,
    );
  }
}
