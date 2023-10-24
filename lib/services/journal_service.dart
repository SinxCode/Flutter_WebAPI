import 'package:http/http.dart' as http;
class JournalService{
  //Se conectando na API
  static const String url='http://192.168.0.37:3000/';
  static const String resource = 'learnhttp/';

  String getUrl(){
    return '$url$resource';
  }

  //Criando um construtor de registro (POST)
  register(String content){
  http.post(Uri.parse(getUrl()), body: { 'content': content });
  }

  //Criando um consrtutor de leitura (GET)
  Future<String> get()async{
   http.Response response  = await http.get(Uri.parse(getUrl()));
   print(response.body);
   return response.body;
  }
  }
