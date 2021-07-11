import 'package:flutter/material.dart';
import 'package:vidente_app/controllers/tema_controller.dart';
import 'package:vidente_app/widgets/home.dart';

class Resumo extends StatelessWidget {
  static Resumo instancia = new Resumo();

  static String cityName = "";

  final String cidade;
  final String descricao;
  final double temperaturaAtual;
  final double temperaturaMaxima;
  final double temperaturaMinima;
  final int numeroIcone;

  const Resumo({
    Key key,
    this.cidade,
    this.descricao,
    this.temperaturaAtual,
    this.temperaturaMaxima,
    this.temperaturaMinima,
    this.numeroIcone,
  }) : super(key: key);

  enviar() async {
    await cityName;
    print('aaaaaaaa' + cityName);
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Colors.grey[300],
      minimumSize: Size(88, 36),
      // shape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(2)),
      // ),
    );

    // String estadoName = "";
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(Icons.brightness_6_outlined),
                Switch(
                  value: TemaController.instancia.usarTemaEscuro,
                  onChanged: (valor) {
                    TemaController.instancia.trocarTema();
                  },
                ),
              ],
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Digite sua cidade',
                ),
                onChanged: (value) {
                  cityName = value;
                  print('estou aqui' + cityName);
                },
              ),
            ),
            Container(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    enviar();
                  },
                  child: Text('enviar'),
                )),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(),
            //       hintText: 'Estado',
            //     ),
            //     onChanged: (value) {
            //       estadoName = value;
            //       print('estou aqui' + estadoName.toUpperCase());
            //     },
            //   ),
            // ),
          ],
        ),
        Padding(padding: EdgeInsets.all(20)),
        Text(
          cidade,
          style: TextStyle(fontSize: 18),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/$numeroIcone.png')),
              Padding(padding: EdgeInsets.all(2)),
              Text(
                '${temperaturaAtual.toStringAsFixed(0)} ºC',
                style: TextStyle(fontSize: 40),
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${temperaturaMaxima.toStringAsFixed(0)} ºC'),
                  Text('${temperaturaMinima.toStringAsFixed(0)} ºC'),
                ],
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          descricao,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
