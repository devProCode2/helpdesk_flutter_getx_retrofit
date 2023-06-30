//import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';


class DioFactory {
  DioFactory(this._baseUrl, 
      // this._apiAuthInterceptor,
      // this._headersInterceptor,
      // this._secureActionInterceptor,
      // this._proxyInterceptor,
      // this._proxyFinder,
      );

  final String _baseUrl;
  //final ApiAuthInterceptor _apiAuthInterceptor;
  // final util = UtilsServices();
  // final MarvelApiAuthInterceptor _apiAuthInterceptor;
  // final ProxyInterceptor _proxyInterceptor;
  // final ProxyFinder _proxyFinder;
  // final AppendHeadersInterceptor _headersInterceptor;
  // final SecureActionInterceptor _secureActionInterceptor;

  Dio create() => Dio(_createBaseOptions())
    ..interceptors.addAll([
      //_apiAuthInterceptor,

      // se debug true adiciona o pretty dio logger
      //Config.debug ? prettyDioLogger() : const Interceptor(),

      // _proxyInterceptor,
      // _headersInterceptor,
      // _secureActionInterceptor,
    ]);

  // ..httpClientAdapter = _createAdapter();

  //  HttpClientAdapter _createAdapter() => DefaultHttpClientAdapter()
  //    ..onHttpClientCreate = (client) => client..findProxy = _proxyFinder.findProxy;

  BaseOptions _createBaseOptions() => BaseOptions(
        baseUrl: _baseUrl,
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 60),
      );
    
}
