import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../provider/part.dart';
import 'domain_account.dart';
import 'file_open_model.dart';
import 'user.dart';

part 'app_model.freezed.dart';

extension AppModelEx on WidgetRef {
  AppModel get appModel => watch(appProvider.select((value) => value));
}

@freezed
class AppModel with _$AppModel {
  const AppModel._();

  const factory AppModel({DomainAccount? domainAccount, @Doc(message: '当前登录的用户') User? user, FileOptionModel? fileOpen, @Default(false) bool showUploadFileWidget, @Default(false) bool loginLoading}) =
      _AppModel;
}
