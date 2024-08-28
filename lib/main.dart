import 'package:flutter/material.dart';

void main() {
  runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {},
      initialRoute: "/",
    );
  }
}
