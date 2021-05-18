import 'package:clone_instagram/widgets/botoes.dart';
import 'package:clone_instagram/widgets/feed.dart';
import 'package:clone_instagram/widgets/bio.dart';
import 'package:clone_instagram/widgets/destaque.dart';
import 'package:clone_instagram/widgets/perfil.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Arthur Barros',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xDD000000),
          ),
        ),
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Perfil(),
                Bio(),
                Destaque(),
                Divider(height: 1, thickness: 0.1, color: Colors.black),
                Botoes(),
                Divider(height: 1, thickness: 0.1, color: Colors.black),
                Feed(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
