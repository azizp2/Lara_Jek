import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'fcm_api_service.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class FcmApiService {
  factory FcmApiService(Dio dio) => _FcmApiService(dio);

  @PUT('/api/update-token')
  Future<HttpResponse<DataState>> update(
      {@Body() required Map<String, dynamic> body});
}
