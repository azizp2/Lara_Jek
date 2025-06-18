import 'package:lara_jek/app/domain/entity/fcm.dart';
import 'package:lara_jek/core/network/data_state.dart';

abstract class FcmRepository {
  Future<DataState> update(FcmParamEntity param);
}
