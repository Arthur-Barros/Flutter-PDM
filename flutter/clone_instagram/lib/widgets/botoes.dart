import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              elevation: 0,
              child: Text(
                'E-mail',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          // Container(
          //   height: 30,
          //   child: VerticalDivider(
          //     width: 1,
          //     thickness: 0.8,
          //     color: Colors.grey,
          //   ),
          // ),
          // Container(
          //   width: MediaQuery.of(context).size.width / 2 - 0.5,
          //   height: MediaQuery.of(context).size.height,
          //   child: RaisedButton(
          //     onPressed: () {},
          //     color: Colors.white,
          //     elevation: 0,
          //     child: Text(
          //       'E-mail',
          //       style: TextStyle(
          //         fontSize: 18,
          //         color: Colors.blueAccent,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
