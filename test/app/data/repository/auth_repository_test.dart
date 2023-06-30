import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helpdesk_flutter_getx_retrofit/app/core/config.dart';
import 'package:helpdesk_flutter_getx_retrofit/app/core/util_services.dart';
import 'package:helpdesk_flutter_getx_retrofit/app/data/model/login_request.dart';
import 'package:helpdesk_flutter_getx_retrofit/app/data/repository/auth_repository.dart';
import 'package:http_status_code/http_status_code.dart';

void main() {

  setUpAll(() {
    //sem isso não dá pra testar com o  flutter_secure_storage
    FlutterSecureStorage.setMockInitialValues({});
  });

  Config.debug = false;
  final util = UtilServices();

  final AuthRepository authRepo = AuthRepository(util.createDio());

  final credenciais = LoginRequest(email: 'admin@mail.com', senha: '123');

  test('deve efetuar login com sucesso e testar o token', () async {

    await authRepo.login(credenciais).then((result) {

      final data = jsonDecode(result.toString());

      final token = data['token'];

      expect(token, isNotEmpty);

      expect(token, contains('Bearer'));

    });
  });


  test('deve efetuar login2 com sucesso', () async {

    await authRepo.login2(credenciais).then((result) {

      expect(result.response.statusCode, StatusCode.OK); //200

    });

  });


  test('deve efetuar login2 com falha', () async {

    final credenciais = LoginRequest(email: 'admin@mail.com', senha: '1234');
    await authRepo.login2(credenciais).then((result) {

      expect(result.response.statusCode, StatusCode.UNAUTHORIZED); //401

    }).catchError((ex) {

      expect(ex.response.statusCode, StatusCode.UNAUTHORIZED); //401

    });

  });




}

