abstract class BaseResponse {
  final bool _success;
  final String _message;

  bool get success => _success;
  String get message => _message;

  BaseResponse({required bool success, required String message})
      : _success = success,
        _message = message;
}
