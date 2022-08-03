
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: WebView(
          initialUrl: "",

        )
    );
  }
}
