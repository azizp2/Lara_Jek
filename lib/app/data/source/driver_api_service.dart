import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:retrofit/dio.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'driver_api_service.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class DriverApiService {
  factory DriverApiService(Dio dio) => _DriverApiService(dio);

  @GET(DRIVER_PATH_URL + '/settings')
  Future<HttpResponse<DataState>> getSetting();

  @POST(DRIVER_PATH_URL + '/driver/toggle-active')
  Future<HttpResponse<DataState>> setActive();

  @GET(DRIVER_PATH_URL + '/driver/today-stats')
  Future<HttpResponse<DataState>> getStatistic();
}
