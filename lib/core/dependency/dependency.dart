import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:lara_jek/app/data/model/user.dart';
import 'package:lara_jek/app/data/repository/auth_repository.dart';
import 'package:lara_jek/app/data/repository/booking_repository.dart';
import 'package:lara_jek/app/data/repository/driver_repository.dart';
import 'package:lara_jek/app/data/repository/tracking_repository.dart';
import 'package:lara_jek/app/data/source/auth_api_service.dart';
import 'package:lara_jek/app/data/source/booking_api_service.dart';
import 'package:lara_jek/app/data/source/driver_api_service.dart';
import 'package:lara_jek/app/data/source/tracking_api_service.dart';
import 'package:lara_jek/app/domain/repository/auth_repository.dart';
import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/app/domain/repository/driver_repository.dart';
import 'package:lara_jek/app/domain/repository/tracking_repository.dart';
import 'package:lara_jek/app/persentation/c_home/c_home_notifier.dart';
import 'package:lara_jek/app/persentation/confirm_order/confirm_order_notifier.dart';
import 'package:lara_jek/app/persentation/create_order/create_order_notifier.dart';
import 'package:lara_jek/app/persentation/d_home/d_home_notifier.dart';
import 'package:lara_jek/app/persentation/detail_order/detail_order_notifier.dart';
import 'package:lara_jek/app/persentation/history/history_notifier.dart';
import 'package:lara_jek/app/persentation/login/login_notifier.dart';
import 'package:lara_jek/app/persentation/register/register_notifier.dart';
import 'package:lara_jek/app/use_case/auth/auth_login.dart';
import 'package:lara_jek/app/use_case/auth/auth_logout.dart';
import 'package:lara_jek/app/use_case/auth/auth_register.dart';
import 'package:lara_jek/app/use_case/booking/booking_cancel.dart';
import 'package:lara_jek/app/use_case/booking/booking_check_price.dart';
import 'package:lara_jek/app/use_case/booking/booking_create.dart';
import 'package:lara_jek/app/use_case/booking/booking_get_all.dart';
import 'package:lara_jek/app/use_case/booking/booking_get_by_id.dart';
import 'package:lara_jek/app/use_case/booking/booking_get_today.dart';
import 'package:lara_jek/app/use_case/booking/booking_update_status.dart';
import 'package:lara_jek/app/use_case/driver/driver_get_interval.dart';
import 'package:lara_jek/app/use_case/driver/driver_get_stats.dart';
import 'package:lara_jek/app/use_case/driver/driver_get_status.dart';
import 'package:lara_jek/app/use_case/driver/driver_set_active.dart';
import 'package:lara_jek/app/use_case/tracking/tracking_get_by_id.dart';
import 'package:lara_jek/app/use_case/tracking/tracking_send.dart';
import 'package:lara_jek/core/network/app_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final sl = GetIt.instance;

void initDependency() {
  Dio dio = Dio();

  dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true));
  dio.interceptors.add(AppInterceptor());

  sl.registerSingleton<Dio>(dio);

// API SERVICE
  sl.registerSingleton<AuthApiService>(AuthApiService(dio));
  sl.registerSingleton<BookingApiService>(BookingApiService(dio));
  sl.registerSingleton<DriverApiService>(DriverApiService(dio));
  sl.registerSingleton<TrackingApiService>(TrackingApiService(dio));
  // END API SERVICE

// REPOSITORY
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));
  sl.registerSingleton<BookingRepository>(BookingRepositoryImpl(sl()));
  sl.registerSingleton<DriverRepository>(DriverRepositoryImpl(sl()));
  sl.registerSingleton<TrackingRepository>(TrackingRepositoryImpl(sl()));
  // END REPOSITORY

// USE CASE
  // ======================= Auth Use Case =======================
  sl.registerSingleton<AuthLoginUseCase>(AuthLoginUseCase(sl()));
  sl.registerSingleton<AuthLogoutUseCase>(AuthLogoutUseCase(sl()));
  sl.registerSingleton<AuthRegisterUseCase>(AuthRegisterUseCase(sl()));
  // ====================== Booking Use Case =======================
  sl.registerSingleton<BookingGetAllUseCase>(BookingGetAllUseCase(sl()));
  sl.registerSingleton<BookingGetByIdUseCase>(BookingGetByIdUseCase(sl()));
  sl.registerSingleton<BookingGetTodayUseCase>(BookingGetTodayUseCase(sl()));
  sl.registerSingleton<BookingUpdateStatusUseCase>(
      BookingUpdateStatusUseCase(sl()));
  sl.registerSingleton<BookingCancelUseCase>(BookingCancelUseCase(sl()));
  sl.registerSingleton<BookingCreateUseCase>(BookingCreateUseCase(sl()));
  sl.registerSingleton<BookingCheckPriceUseCase>(
      BookingCheckPriceUseCase(sl()));
// ===================== Driver Use Case ======================
  sl.registerSingleton<DriverGetIntervalUseCase>(
      DriverGetIntervalUseCase(sl()));
  sl.registerSingleton<DriverGetStatusUseCase>(DriverGetStatusUseCase(sl()));
  sl.registerSingleton<DriverGetStatsUseCase>(DriverGetStatsUseCase(sl()));
  sl.registerSingleton<DriverSetActiveUseCase>(DriverSetActiveUseCase(sl()));
// ===================== Tracking Use Case ======================
  sl.registerSingleton<TrackingGetByIdUseCase>(TrackingGetByIdUseCase(sl()));
  sl.registerSingleton<TrackingSendUseCase>(TrackingSendUseCase(sl()));
// END USE CASE

// PROVIDER
  sl.registerFactoryParam<LoginNotifier, void, void>(
    (param1, param2) => LoginNotifier(sl()),
  );

  sl.registerFactoryParam<RegisterNotifier, void, void>(
    (param1, param2) => RegisterNotifier(sl()),
  );

  sl.registerFactoryParam<CHomeNotifier, void, void>(
    (param1, param2) => CHomeNotifier(sl(), sl()),
  );

  sl.registerFactoryParam<CreateOrderNotifier, void, void>(
    (param1, param2) => CreateOrderNotifier(sl(), sl()),
  );

  sl.registerFactoryParam<HistoryNotifier, void, void>(
    (param1, param2) => HistoryNotifier(sl()),
  );

  sl.registerFactoryParam<DetailOrderNotifier, int, void>(
    (param1, param2) => DetailOrderNotifier(param1, sl(), sl(), sl(), sl()),
  );

  sl.registerFactoryParam<DHomeNotifier, void, void>(
    (param1, param2) => DHomeNotifier(sl(), sl(), sl(), sl(), sl()),
  );

  sl.registerFactoryParam<ConfirmOrderNotifier, void, void>(
    (param1, param2) => ConfirmOrderNotifier(),
  );
//END PROVIDER
}
