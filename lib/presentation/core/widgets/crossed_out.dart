import 'package:flutter/material.dart';

class CrossedOut extends StatelessWidget {
  final Widget child;

  const CrossedOut({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          child,
          const Positioned.fill(
            child: IgnorePointer(
              child: Icon(
                Icons.clear,
                color: Colors.red,
              ),
            ),
          ),
        ],
      );
}
