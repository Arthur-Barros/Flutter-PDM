import 'package:vidente_app/models/previsao_hora.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'dart:convert';

class PrevisaoService {
  static String baseUrlAPI = 'dataservice.accuweather.com';
  static String cityPath = 'locations/v1/cities/search';
  static String path = 'forecasts/v1/hourly/12hour/{locationKey}';
  final Map<String, String> params = {
    'apikey': env['API_KEY'],
    'language': 'pt-BR',
    'metric': 'true'
  };

  Future<List<PrevisaoHora>> recuperarUltimasPrevisoes(String cityName) async {
    print(cityName);
    final String cityKey = await getCityKey(cityName);
    print('aqui estou eu' + cityKey);

    var respostaUrl = path.replaceFirst("{locationKey}", cityKey);

    print(respostaUrl);

    final Response resposta =
        await get(Uri.https(baseUrlAPI, respostaUrl, params));

    print(resposta);
    if (resposta.statusCode == 200) {
      print('estou com status 200');
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

  Future<String> getCityKey(String cityName) async {
    final Map<String, String> paramsCity = {
      'apikey': env['API_KEY'],
      'language': 'pt-BR',
      'q': cityName,
    };

    try {
      final respostaCity =
          await get(Uri.https(baseUrlAPI, cityPath, paramsCity));
      Iterable it = json.decode(respostaCity.body);
      print(it.first['Key']);
      return it.first['Key'];
    } catch (e) {
      print(e);
      print('cai no erro');
      throw Exception('Falha ao carregar as previsões');
    }
  }
}
