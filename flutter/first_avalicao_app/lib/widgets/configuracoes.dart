import 'package:flutter/material.dart';
import 'package:vidente_app/models/cidade.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:vidente_app/services/cidade_service.dart';
import 'package:vidente_app/widgets/home.dart';

class Configuracoes extends StatefulWidget {
  @override
  _ConfiguracoesState createState() => _ConfiguracoesState();

  final List<Cidade> cidades;
  const Configuracoes({Key key, this.cidades}) : super(key: key);
}

class _ConfiguracoesState extends State<Configuracoes> {
  List<Cidade> cidades;

  @override
  void initState() {
    super.initState();
    carregarCidades();
  }

  void carregarCidades() async {
    CidadeService service = CidadeService();
    cidades = await service.recuperarCidades();
  }

  Iterable<Cidade> filtrarCidades(String consulta) {
    print(consulta);
    return this.cidades.where(
        (cidade) => cidade.nome.toLowerCase().contains(consulta.toLowerCase()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 60, 16, 0),
        child: TypeAheadField<Cidade>(
          textFieldConfiguration: TextFieldConfiguration(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Procurar cidade',
            ),
          ),
          suggestionsCallback: filtrarCidades,
          onSuggestionSelected: (sugestao) async {
            CidadeService service = CidadeService();
            final String filtro = sugestao.nome + ' ' + sugestao.estado;
            await service.pesquisarCidade(filtro);
            // Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Home(
                    // cidades: this.cidades,
                    )));
          },
          itemBuilder: (context, sugestao) {
            return ListTile(
              leading: Icon(Icons.place),
              title: Text(sugestao.nome + " - " + sugestao.siglaEstado),
              subtitle: Text(sugestao.estado),
            );
          },
          noItemsFoundBuilder: (context) => Container(
            child: Center(
              child: Text(
                'Nenhuma cidade encontrada',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}