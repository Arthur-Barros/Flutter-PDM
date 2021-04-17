import 'package:flutter/material.dart';
import 'package:vidente_app/models/previsao_hora.dart';
import 'package:vidente_app/services/previsao_service.dart';
import 'package:vidente_app/widgets/proximas_temperaturas.dart';
import 'package:vidente_app/widgets/resumo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PrevisaoHora> ultimasPrevisoes;

  @override
  void initState() {
    super.initState();
    PrevisaoService service = PrevisaoService();
    ultimasPrevisoes = service.recuperarUltimasPrevisoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vidente'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Resumo(
              cidade: "Bonito - MS",
              descricao: "Ensolarado",
              temperaturaAtual: 28,
              temperaturaMaxima: 30,
              temperaturaMinima: 22,
              numeroIcone: 1,
            ),
            Padding(padding: EdgeInsets.all(10)),
            ProximasTemperaturas(
              previsoes: ultimasPrevisoes,
            ),
          ],
        ),
      ),
    );
  }
}
