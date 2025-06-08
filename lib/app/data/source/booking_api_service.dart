import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'booking_api_service.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class BookingApiService {
  factory BookingApiService(Dio dio) => _BookingApiService(dio);

  @GET(BOOKING_PATH_URL)
  Future<HttpResponse<DataState>> getAll({
    @Query('start_date') String? startDate,
    @Query('end_date') String? endtDate,
  });

  @GET(BOOKING_PATH_URL + '/{id}')
  Future<HttpResponse<DataState>> getById({@Path('id') required int id});
}
