import 'package:lara_jek/app/domain/entity/auth.dart';
import 'package:lara_jek/app/domain/entity/user.dart';
import 'package:lara_jek/core/network/data_state.dart';

abstract class AuthRepository {
  Future<DataState> login(AuthLoginParamEntity param);
  Future<DataState> register(AuthRegisterParamEntity param);
  Future<DataState> logout();
  Future<DataState<UserDriverEntity>> getDetailDriver();
}
