import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> opcoesCorBarra;
  List<Color> opcoesCorTexto;
  List<Color> opcoesCorFundo;
  List<String> cores;
  int opcaoAtual;

  @override
  void initState() {
    super.initState();
    opcoesCorBarra = [
      Colors.green[900],
      Colors.red[900],
      Colors.blue[900],
      Colors.orange[900],
      Colors.purple[900],
    ];

    opcoesCorTexto = [
      Colors.green[800],
      Colors.red[800],
      Colors.blue[800],
      Colors.orange[800],
      Colors.purple[800],
    ];

    opcoesCorFundo = [
      Colors.green[50],
      Colors.red[50],
      Colors.blue[50],
      Colors.orange[50],
      Colors.purple[50],
    ];

    cores = ["Verde", "Vermelho", "Azul", "Laranja", "Roxo"];

    opcaoAtual = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: opcoesCorFundo[opcaoAtual],
      appBar: AppBar(
        title: Text('Cores'),
        backgroundColor: opcoesCorBarra[opcaoAtual],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              cores[opcaoAtual],
              style: TextStyle(
                fontSize: 50,
                color: opcoesCorTexto[opcaoAtual],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opcaoAtual =
                      opcaoAtual < opcoesCorBarra.length - 1 ? ++opcaoAtual : 0;
                });
              },
              child: Text(
                'Trocar cor',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
