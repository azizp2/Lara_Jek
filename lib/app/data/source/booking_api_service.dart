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

  @POST(BOOKING_PATH_URL)
  Future<HttpResponse<DataState>> create(
      {@Body() required Map<String, dynamic> body});

  @POST('/api/driver/booking/{id}/accept')
  Future<HttpResponse<DataState>> accept({@Path('id') required int id});

  @PUT('/api/driver/booking/{id}/status')
  Future<HttpResponse<DataState>> updateStatus(
      {@Path('id') required int id,
      @Body() required Map<String, dynamic> body});

  @POST(BOOKING_PATH_URL + '/{id}/cancel')
  Future<HttpResponse<DataState>> cancel({@Path('id') required int id});

  @POST(BOOKING_PATH_URL + '/price-check')
  Future<HttpResponse<DataState>> checkPrice(
      {@Body() required Map<String, dynamic> body});

  @POST(BOOKING_PATH_URL + '/rating')
  Future<HttpResponse<DataState>> sendRating(
      {@Body() required Map<String, dynamic> body});
}
