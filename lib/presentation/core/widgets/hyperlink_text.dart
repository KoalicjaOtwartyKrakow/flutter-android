import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HyperlinkText extends StatefulWidget {
  final Uri uri;
  final String text;

  const HyperlinkText({
    Key? key,
    required this.uri,
    required this.text,
  }) : super(key: key);

  @override
  State<HyperlinkText> createState() => _HyperlinkTextState();
}

class _HyperlinkTextState extends State<HyperlinkText> {
  late final TapGestureRecognizer _recognizer = TapGestureRecognizer()..onTap = () => launchUrl(widget.uri);

  @override
  Widget build(BuildContext context) => Text.rich(
        TextSpan(
          text: widget.text,
          recognizer: _recognizer,
          style: const TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      );

  @override
  void dispose() {
    _recognizer.dispose();
    super.dispose();
  }
}
