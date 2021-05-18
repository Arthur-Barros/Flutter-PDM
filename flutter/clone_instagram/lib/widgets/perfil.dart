import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(padding: EdgeInsets.all(5)),
      IntrinsicHeight(
        child: Row(children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 5,
                        child: Stack(children: [
                          Center(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('images/1.jpeg'),
                            ),
                          )
                        ])),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text('10',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                        )),
                                    Text('publicações',
                                        style: TextStyle(fontSize: 15))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text('500',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                        )),
                                    Text('seguidores',
                                        style: TextStyle(fontSize: 15))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 0, top: 0, bottom: 0),
                                child: Column(
                                  children: [
                                    Text('300',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                        )),
                                    Text('seguindo',
                                        style: TextStyle(fontSize: 15))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8, top: 10),
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.white,
                                    child: Text(
                                      "Menssagem",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8, top: 10),
                                child: Container(
                                  width: 40,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: (IconButton(
                                    icon: Icon(Icons.person_sharp),
                                    onPressed: () {},
                                    padding: EdgeInsets.only(left: 0, top: 2),
                                  )),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8, top: 10),
                                child: Container(
                                  width: 40,
                                  height: 30,

                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: (IconButton(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      size: 30,
                                    ),
                                    onPressed: () {},
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                  )),
                                  //arow_drop_down
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    ]);
  }
}
