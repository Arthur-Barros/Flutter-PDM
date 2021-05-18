import 'package:clone_instagram/widgets/arquivos.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  elevation: 0,
                  child: Icon(
                    Icons.grid_on,
                    size: 30,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  elevation: 0,
                  child: Icon(
                    Icons.tv,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  elevation: 0,
                  child: Icon(
                    Icons.assignment_ind,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      child: Center(
                        child: Image(
                          image: AssetImage('images/2.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      child: Center(
                        child: Image(
                          image: AssetImage('images/3.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Image(
                          image: AssetImage('images/5.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Image(
                          image: AssetImage('images/4.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Image(
                          image: AssetImage('images/6.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Image(
                          image: AssetImage('images/7.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Image(
                          image: AssetImage('images/8.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      child: Center(
                        child: Image(
                          image: AssetImage('images/9.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Image(
                          image: AssetImage('images/10.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Image(
                          image: AssetImage('images/11.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3 - 3,
                    width: MediaQuery.of(context).size.width / 3 - 3,
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Image(
                          image: AssetImage('images/12.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
