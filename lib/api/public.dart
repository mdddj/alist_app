part of 'part.dart';

///检测网站状态
class MyPublicPingApi extends MyApiBase<String> {
  MyPublicPingApi() : super("/ping");

  @override
  String? fromString(String data) {
    return data;
  }
}

///获取网站设置
class MyPublicGetSettingApi extends MyApiBase<SiteSetting> {
  MyPublicGetSettingApi() : super("/api/public/settings");

  @override
  SiteSetting fromMap(Map<String, dynamic> data) {
    return SiteSetting.fromJson(data);
  }
}

///获取原始数据
class MyPublicFetchRawApi extends MyApiBase<DartTypeModel> {
  MyPublicFetchRawApi() : super('');

  @override
  DartTypeModel? customHandleResult(DartTypeModel data) => data;
}

///原生 api
class MyRawDataApi extends MyApiBase<String> {
  MyRawDataApi(super.url);

  @override
  String? customHandleResult(DartTypeModel data) => data.whenOrNull(string: (value) => value);
}

///获取 json数据
class MyRawJsonApi extends MyApiBase<DartTypeModel> {
  MyRawJsonApi() : super('', method: HttpMethod.get);

  @override
  DartTypeModel? customHandleResult(DartTypeModel data) {
    return data;
  }
}
