import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class AuthApiService {
  factory AuthApiService(Dio dio) => _AuthApiService(dio);

  @POST('/api/login')
  Future<HttpResponse<DataState>> login(
      {@Body() required Map<String, dynamic> body});

  @POST('/api/register')
  Future<HttpResponse<DataState>> register(
      {@Body() required Map<String, dynamic> body});

  @POST('/api/logout')
  Future<HttpResponse<DataState>> logout();

  @GET('/api/user')
  Future<HttpResponse<DataState>> get();
}
