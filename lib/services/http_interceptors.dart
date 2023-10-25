import 'package:http_interceptor/http_interceptor.dart';

//Os interceptadores irão interceptar as requisções e nos trazer informações de requisições e respostas
class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    print(data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
      print(data.toString());
      return data;
  }

}