import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:lara_jek/app/persentation/login/login_notifier.dart';
import 'package:lara_jek/app/persentation/register/register_notifier.dart';
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

// Provider
  sl.registerFactoryParam<LoginNotifier, void, void>(
    (param1, param2) => LoginNotifier(),
  );

  sl.registerFactoryParam<RegisterNotifier, void, void>(
    (param1, param2) => RegisterNotifier(),
  );
}
