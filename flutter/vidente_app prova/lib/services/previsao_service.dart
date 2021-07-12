import 'package:vidente_app/models/previsao_hora.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:vidente_app/widgets/city.dart';

class PrevisaoService {
  static PrevisaoService instance = new PrevisaoService();

  static String baseUrlAPI = 'dataservice.accuweather.com';
  static String cityPath = 'locations/v1/cities/search';
  static String path = 'forecasts/v1/hourly/12hour/{Key}';
  final Map<String, String> params = {
    'apikey': env['API_KEY'],
    'language': 'pt-BR',
    'metric': 'true'
  };

  Future<List<PrevisaoHora>> recuperarUltimasPrevisoes() async {
    final String cidadeChave = await buscandoChave();

    var respUrl = path.replaceFirst("{Key}", cidadeChave);

    final Response resposta = await get(Uri.https(baseUrlAPI, respUrl, params));

    if (resposta.statusCode == 200) {
      Iterable it = json.decode(resposta.body);
      print(it);
      List<PrevisaoHora> previsoes =
          List.from(it.map((objJson) => PrevisaoHora.transformarJSON(objJson)));
      print('Carregou novas previsoes');
      return previsoes;
    } else {
      throw Exception('Falha ao carregar as previsões');
    }
  }

  Future<String> buscandoChave() async {
    final Map<String, String> paramsCity = {
      'apikey': env['API_KEY'],
      'language': 'pt-BR',
      'q': CidadeCtrl.instance.input,
    };

    print(CidadeCtrl.instance.input);

    try {
      final respCity = await get(Uri.https(baseUrlAPI, cityPath, paramsCity));
      Iterable respCityJson = json.decode(respCity.body);
      print(respCityJson.first['Key']);
      return respCityJson.first['Key'];
    } catch (e) {
      throw Exception('Falha ao carregar as previsões');
    }
  }
}
