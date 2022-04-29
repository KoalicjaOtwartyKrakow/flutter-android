import 'package:flutter/material.dart';

class TooltippedIcon extends StatelessWidget {
  final IconData icon;
  final String message;

  const TooltippedIcon({
    Key? key,
    required this.icon,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Tooltip(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Icon(icon),
        ),
        message: message,
      );
}
