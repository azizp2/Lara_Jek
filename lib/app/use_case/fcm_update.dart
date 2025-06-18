import 'package:lara_jek/app/domain/entity/fcm.dart';
import 'package:lara_jek/app/domain/repository/fcm_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class FcmUpdateUseCase extends AppUseCase<Future<DataState>, FcmParamEntity> {
  final FcmRepository _fcmRepository;

  FcmUpdateUseCase(this._fcmRepository);

  @override
  Future<DataState> call({FcmParamEntity? param}) {
    return _fcmRepository.update(param!);
  }
}
