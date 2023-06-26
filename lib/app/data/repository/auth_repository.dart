import 'package:dio/dio.dart' hide Headers;
import 'package:helpdesk_flutter_getx_retrofit/app/data/model/login_request.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_repository.g.dart';

@RestApi()
abstract class AuthRepository {

  factory AuthRepository(Dio dio, {String baseUrl}) = _AuthRepository;

  @POST("/login")
  Future<String> login(@Body() LoginRequest login);

  @POST("/login")
  Future<HttpResponse<String>> login2(@Body() LoginRequest login);

  // @GET(path)

  // @PUT(path)

  // @DELETE(path)

  // @PATCH(path)


}