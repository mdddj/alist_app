import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:version/version.dart';

import 'version_info.dart';

extension MyPlatformExdd on MyPlatform {
  String get name {
    return myPlatform.when(
      android: () => 'Android',
      ios: () => 'Ios',
      macos: () => 'Macos',
      web: () => 'Web',
      linux: () => 'Linux',
      windows: () => 'Windows',
      fuchsia: () => 'Fuchsia',
    );
  }
}

class _Api extends BaseApi<VersionInfo> {
  _Api(super.url);

  @override
  VersionInfo covertToModel(DartTypeModel data, RequestParams param) {
    final json = data.whenOrNull(json: (value) => value['data']);
    if (json case final Map<String, dynamic> j) {
      return VersionInfo.fromJson(j);
    }
    final message =
        data.whenOrNull(json: (value) => value['message']) ?? '暂无新版本';
    throw BaseApiException.businessException(message: '$message');
  }
}

sealed class UpdateAppService extends ChangeNotifier {
  String get domain;

  ///版本信息
  String? versionText;
  VersionInfo? updateModel;
  BaseApiException? exception;

  UpdateAppService() {
    PackageInfo.fromPlatform().then((value) {
      versionText = value.version;
      notifyListeners();
    });
    run();
  }

  String getServerVersion(VersionInfo model) {
    return model.versionNumber;
  }

  Future<VersionInfo?> apiRequest(
      String currentVersion, MyPlatform platform) async {
    final param = <String, dynamic>{
      "appVersion": currentVersion,
      "appName": 'alist',
      "platform": platform.name
    };
    Logger().t(param);
    return await _Api(domain).request(R(data: param, fullUrl: domain,showDefaultLoading: false));
  }



  Future<String> getCurrentVersioin() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  bool hasNewVersion(String serverVersion, String currenctMessage) {
    return Version.parse(serverVersion) > Version.parse(currenctMessage);
  }

  Future<VersionInfo?> startApiRequest() async {
    final version = await getCurrentVersioin();
    var response = await apiRequest(version, myPlatform);
    if (response != null) {
      response = response.copyWith(currentVersion: version);
    }
    return response;
  }

  ///开始检测
  Future<VersionInfo?> run({ValueChanged<VersionInfo>? handle}) async {
    try{
      if(exception!=null){
        exception = null;
        notifyListeners();
      }
      if(updateModel!=null){
        updateModel = null;
        notifyListeners();
      }

      final response = await startApiRequest();
      if (response != null) {
        Logger().d('-->$response');
        if (response.currentVersion case final String cv when cv.isNotEmpty) {
          final checkHasNewVersion =
          hasNewVersion(getServerVersion(response), cv);
          if (checkHasNewVersion) {
            updateModel = response;
            notifyListeners();
            handle?.call(response);
          }
        }
        return response;
      }
      return null;
    } on BaseApiException catch(e){
      exception = e;
      notifyListeners();
    }
    return null;
  }

  Map<String, dynamic> getJson() {
    return {"model": updateModel, "version": versionText};
  }
}

//-============================================================
///默认升级加载器.
class DefaultUpdateAppServiceImpl extends UpdateAppService {
  @override
  String get domain => "http://localhost:8082/api/version/checkVersion";
}

///自定义升级加载器
class CustomUpdateAppServerImpl extends UpdateAppService {
  final String requestUrl;

  CustomUpdateAppServerImpl({required this.requestUrl});

  @override
  String get domain => requestUrl;
}
