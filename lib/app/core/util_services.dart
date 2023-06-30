import 'package:dio/src/dio.dart';
import 'package:logger/logger.dart';

import '../data/dio_factory.dart';
import 'config.dart';

class UtilServices {

  Dio createDio() {
    //final apiAuthInterceptor = ApiAuthInterceptor();
    //final dioFactory = DioFactory(Config.baseUrl, apiAuthInterceptor);
    final dioFactory = DioFactory(Config.baseUrl);
    return dioFactory.create();
  }

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  var loggerNoStack = Logger(
    printer: PrettyPrinter(methodCount: 1),
  );


}