import 'package:dio/dio.dart';
import 'package:futebol/shared/modules/Time.dart';

final dio = Dio();

Future<List<String>> getDio() async {
  try{
    final response = await dio.get(
      'https://api.api-futebol.com.br/v1/campeonatos/14/tabela',
      options: Options(
        headers: {"Authorization": "Bearer test_61b4ec36a3087107f90397870772de"},
      ),
    );
    if (response.statusCode != 200){
      throw Exception("Erro na requisição");
    }

    return response.data!.map((e) => Time.fromMap(e)).toList();
  } catch(e){
    //print(e);
    rethrow;
  }
}
