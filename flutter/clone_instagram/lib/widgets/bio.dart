import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Bio extends StatelessWidget {
  var linktext = TextStyle(
    color: Colors.blue,
    fontSize: 17,
  );

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Arthur Barros",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 2),
              child: Text(
                "Programador",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 2),
              child: Text(
                "Bonito - MS",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 2),
              child: Text(
                "Desenvolvedor web,\nsolicite uma cotação no e-mail:\nbarrosarthur773@gmail.com",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15, top: 2),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        style: linktext,
                        text: "https://github.com/Arthur-Barros",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            var url = "https://github.com/settings/profile";

                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw "Cannot Load Url";
                            }
                          }),
                  ]),
                )),
          ],
        )
      ])
    ]);
  }
}
