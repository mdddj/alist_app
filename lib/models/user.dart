import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';


@freezed
class User with _$User {
  const User._();

  const factory User({
      @JsonKey(name: 'id') @Default(0)  int id,
      @JsonKey(name: 'username') @Default('')  String username,
      @JsonKey(name: 'password') @Default('')  String password,
      @JsonKey(name: 'base_path') @Default('')  String basePath,
      @JsonKey(name: 'role') @Default(0)  int role,
      @JsonKey(name: 'disabled') @Default(false)  bool disabled,
      @JsonKey(name: 'permission') @Default(0)  int permission,
      @JsonKey(name: 'sso_id') @Default('')  String ssoId,
      @JsonKey(name: 'otp') @Default(false)  bool otp,
    }) = _User;
  
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}

