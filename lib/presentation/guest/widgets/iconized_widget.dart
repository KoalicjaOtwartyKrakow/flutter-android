import 'package:flutter/widgets.dart';

class IconizedWidget extends StatelessWidget {
  final IconData icon;
  final Widget widget;

  const IconizedWidget(
    this.icon,
    this.widget, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Icon(icon),
          const SizedBox(width: 2),
          widget,
        ],
      );
}
