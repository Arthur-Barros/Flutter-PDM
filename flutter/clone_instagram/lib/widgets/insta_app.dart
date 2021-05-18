import 'package:flutter/material.dart';
import 'package:clone_instagram/widgets/home.dart';

class InstaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
