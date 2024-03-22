part of 'part.dart';

//登录接口
class MyLoginApi extends MyApiBase<AuthLoginResult> {
  MyLoginApi(AuthLoginParam param)
      : super('/api/auth/login', method: HttpMethod.post) {
    super.params.addAll(param.toJson());
  }

  @override
  AuthLoginResult fromMap(JSON data) => AuthLoginResult.fromJson(data);
}

//获取用户信息接口
class MyAuthMeApi extends MyApiBase<User> {
  MyAuthMeApi() : super('/api/me');

  @override
  User fromMap(JSON data) => User.fromJson(data);
}
