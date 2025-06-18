import 'package:lara_jek/app/data/source/fcm_api_service.dart';
import 'package:lara_jek/app/domain/entity/fcm.dart';
import 'package:lara_jek/app/domain/repository/fcm_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';

class FcmRepositoryImpl extends FcmRepository {
  final FcmApiService _fcmApiService;

  FcmRepositoryImpl(this._fcmApiService);

  @override
  Future<DataState> update(FcmParamEntity param) {
    return handleResponse(() => _fcmApiService.update(body: param.toJson()),
        (p0) async {
      return null;
    });
  }
}
