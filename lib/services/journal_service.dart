import 'package:flutter_webapi_first_course/services/http_interceptors.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/http.dart';
class JournalService{
  //Se conectando na API
  static const String url='http://192.168.0.37:3000/';
  static const String resource = 'learnhttp/';

  //Criando um cliente HTTP para utilizar os interceptadores.
  http.Client client = InterceptedClient.build(interceptors: [LoggingInterceptor()]);

  String getUrl(){
    return '$url$resource';
  }

  //Criando um controller de registro (POST)
  register(String content){
  client.post(Uri.parse(getUrl()), body: { 'content': content });
  }

  //Criando um controller de leitura (GET)
  Future<String> get()async{
   http.Response response  = await client.get(Uri.parse(getUrl()));
   print(response.body);
   return response.body;
  }
}
