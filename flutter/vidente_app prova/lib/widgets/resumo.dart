import 'package:flutter/material.dart';
import 'package:vidente_app/controllers/tema_controller.dart';

class Resumo extends StatelessWidget {
  // static Resumo instancia = new Resumo();

  // static String cityName = "";

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

  // enviar() async {
  //   await cityName;
  //   print('aaaaaaaa' + cityName);
  // }

  @override
  Widget build(BuildContext context) {
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
