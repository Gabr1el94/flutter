import 'package:cep/models/result_cep.dart';
import 'package:http/http.dart' as http;

class ViaCepService {
  static Future<ResultCep> fetchCep({required String cep}) async {
    String uri = 'https://viacep.com.br/ws/$cep/json/';
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      return ResultCep.fromJson(response.body);
    } else {
      throw Exception('Requisição inválida!');
    }
  }
}
