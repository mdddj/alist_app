import 'package:dd_js_util/dd_js_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global.freezed.dart';

extension BaseApiExceptionEx on BaseApiException {
  String get getMessage {
    return whenOrNull(
          receiveTimeout: () => "连接超时",
          connectionTimeout: () => "请求超时",
          badCertificate: () => "证书验证失败",
          connectionError: () => "连接失败",
          sendTimeout: () => "服务超时",
          businessException: (message, error, stackTrace) => message,
          cancel: () => "请求关闭",
          badResponse: (response, statusCode) => "服务繁忙:$statusCode",
        ) ??
        "服务异常";
  }
}

extension GlobalErrorEx on GlobalError {
  String getMessage() {
    return map(
        api: (value) => value.exception.getMessage,
        biz: (value) => value.message,
        decode: (value) => '解析数据失败.',
        tokenExpire: (TokenExpireError value) {
          return "登录态失效,请重新登录";
        },
        cancel: (RequestCancelError value) {
          return "请求取消";
        },
        noPermission: (NoPermissionError value) {
          return "403:没有权限";
        });
  }

  void showErrorDialog() {
    showIosDialog(getMessage());
  }
}

///app异常类
@freezed
class GlobalError with _$GlobalError {
  const GlobalError._();

  //接口异常
  factory GlobalError.api(BaseApiException exception) = ApiError;

  //业务异常
  factory GlobalError.biz(String message) = BizError;

  //数据解析失败异常
  factory GlobalError.decode() = DecodeError;

  //请求取消
  factory GlobalError.cancel() = RequestCancelError;

  //token失效
  factory GlobalError.tokenExpire() = TokenExpireError;

  //没有权限
  factory GlobalError.noPermission() = NoPermissionError;

  @override
  String toString() {
    return getMessage();
  }
}
