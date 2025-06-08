import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'tracking_api_service.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class TrackingApiService {
  factory TrackingApiService(Dio dio) => _TrackingApiService(dio);

  @POST(DRIVER_PATH_URL + '/tracking')
  Future<HttpResponse<DataState>> send(
      {@Body() required Map<String, dynamic> body});

  @GET(DRIVER_PATH_URL + '/tracking/{id}')
  Future<HttpResponse<DataState>> getById({@Path('id') required int id});
}
