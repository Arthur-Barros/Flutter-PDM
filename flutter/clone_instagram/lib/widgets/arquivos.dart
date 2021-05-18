import 'package:flutter/material.dart';

class Arquivos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        height: MediaQuery.of(context).size.width / 3 - 3,
        width: MediaQuery.of(context).size.width / 3 - 3,
        child: Container(
          color: Colors.red,
          child: Center(
            child: Image(
              image: AssetImage('images/1.jpeg'),
            ),
          ),
        ),
      ),
    );
  }
}
