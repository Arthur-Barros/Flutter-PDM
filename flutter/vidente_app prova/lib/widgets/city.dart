import 'package:flutter/material.dart';
import 'package:vidente_app/services/previsao_service.dart';
import 'package:vidente_app/widgets/home.dart';

class CidadeCtrl {
  String input;
  static CidadeCtrl instance = new CidadeCtrl();

  CidadeCtrl() {
    input = '';
  }
}

class Cidade extends StatefulWidget {
  @override
  _CidadeState createState() => _CidadeState();
}

class _CidadeState extends State<Cidade> {
  String cidade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vidente'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Digite a cidade que deseja visualizar as previsões?',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Informe sua cidade',
                    ),
                    onChanged: (text) {
                      cidade = text;
                      print(cidade);
                    },
                    textCapitalization: TextCapitalization.sentences,
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('Enviar'),
                    onPressed: () async {
                      CidadeCtrl.instance.input = cidade;
                      print(CidadeCtrl.instance.input);
                      await PrevisaoService.instance.buscandoChave();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
