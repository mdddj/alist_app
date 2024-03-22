library api;

import 'package:dd_check_plugin/dd_check_plugin.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:get_it/get_it.dart';

import '../account/part.dart';
import '../exception/global.dart';
import '../models/auth_login.dart';
import '../models/base_result.dart';
import '../models/fs_detail_info.dart';
import '../models/fs_list.dart';
import '../models/fs_search_result.dart';
import '../models/my_fs_copy_api_param.dart';
import '../models/my_fs_move_file_api_param.dart';
import '../models/my_fs_recursive_move_api_param.dart';
import '../models/my_fs_remove_api_param.dart';
import '../models/my_fs_remove_empty_folder_param.dart';
import '../models/my_fs_rename_param.dart';
import '../models/site_setting.dart';
import '../models/user.dart';
import '../tool/part.dart';

part 'auth.dart';
part 'fs.dart';
part 'public.dart';

typedef JSON = Map<String, dynamic>;

class DioInstance {
  static DioInstance get instance => GetIt.instance.get<DioInstance>();
  Dio? dio;

  Future<Dio> getDio(BaseOptions options) async {
    if (dio != null) {
      return dio!;
    }
    dio = Dio(options);
    try {
     await DdCheckPlugin().init(dio!,
          initHost: '192.168.1.102',
          port: 9998,
          projectName: 'alist', conectSuccess: (value) {
      }, timeOut: const Duration(seconds: 5));
    } on ConnectException catch (_) {
    }
    return dio!;
  }

  void reset() {
    dio = null;
  }
}

abstract class MyApiBase<T> extends BaseApi<T> {
  MyApiBase(super.url, {HttpMethod? method})
      : super(httpMethod: method ?? HttpMethod.get);

  @override
  Future<BaseOptions> getOptions(RequestParams param) async {
    final active = await AccountManager.instance.active;
    final domain = active?.domain;
    const connectTimeout = 10;
    return BaseOptions(
        baseUrl: domain ?? '',
        connectTimeout: const Duration(seconds: connectTimeout),
        sendTimeout: const Duration(seconds: connectTimeout),
        receiveTimeout: const Duration(seconds: connectTimeout));
  }

  @override
  ISet<Interceptor> get interceptions => ISet([g.get<TokenIns>()]);

  @override
  Future<Dio> getDio(BaseOptions baseOptions) async {
    return await DioInstance.instance.getDio(baseOptions);
  }

  @override
  Future<T> request([RequestParams options = const RequestParams()]) async {
    try {
      final result = await super.request(options);
      return result;
    } on BaseApiException catch (e) {
      IsarTool.instance.addLog(e.getMessage, false);
      final ex = e.whenOrNull(cancel: () {
        return GlobalError.cancel();
      }, badResponse: (response, statusCode) {
        if (statusCode == 403) {
          return GlobalError.noPermission();
        }
        return GlobalError.api(e);
      });
      throw ex ?? GlobalError.biz(e.getMessage);
    } on GlobalError catch (_) {
      rethrow;
    } catch (e) {
      IsarTool.instance.addLog('$e', false);
      throw GlobalError.biz('$e');
    }
  }

  (int code, {String? message}) getCodeAndMessage(Map<String, dynamic> json) {
    if (json case {"code": int code, "message": String? message}) {
      return (code, message: message);
    }
    throw GlobalError.biz('解析数据失败');
  }

  @override
  T covertToModel(DartTypeModel data, RequestParams param) {
    final customHandle = customHandleResult(data);
    if (customHandle != null) {
      return customHandle;
    }
    data.whenOrNull(
      json: (value) {
        var (code, :message) = getCodeAndMessage(value);
        if (code == 401) {
          _cleanUserStatus();
          showLoginDialog();
          throw GlobalError.tokenExpire();
        } else if (code != 200 && message != null) {
          throw GlobalError.biz(message);
        }
      },
    );
    final result = data.whenOrNull<T>(
      json: (value) => fromMap(value.json.getMap("data")),
      string: fromString,
      dynamic: (value) =>
          value is ResponseBody ? fromResponseBody(value) : null,
    );
    if (result == null) {
      throw GlobalError.biz('处理数据失败');
    }
    return result;
  }

  T? fromResponseBody(ResponseBody data) {
    return null;
  }

  T? fromMap(Map<String, dynamic> data) {
    return null;
  }

  T? fromString(String data) {
    return null;
  }

  T? customHandleResult(DartTypeModel data) {
    return null;
  }

  //清楚登录态
  void _cleanUserStatus() {
    AccountManager.instance.cleanAuthToken();
  }

  @override
  void beforeHandleDartTypeModel(
      DartTypeModel model, RequestParams requestParams, Response response) {}
}

///token拦截器
class TokenIns extends Interceptor {
  TokenIns();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    AccountManager.instance.getAuthToken().then((value) {
      if (value != null && value.isNotEmpty) {
        options.headers.addAll({"Authorization": value});
      }
      handler.next(options);
    });
  }
}

abstract class MyBaseResultApi extends MyApiBase<BaseResult> {
  MyBaseResultApi(super.url, {super.method});

  @override
  BaseResult fromMap(Map<String, dynamic> data) => BaseResult.fromJson(data);
}

final g = GetIt.instance;

///注册单例类
void registerApi() {
  g.registerSingleton(MyPublicPingApi());
  g.registerSingleton(MyPublicGetSettingApi());
  g.registerSingleton(MyFsListApi());
  g.registerSingleton(MyFsCreateNewFolderApi());
  g.registerSingleton(MyFsRenameFolderApi());
  g.registerSingleton(MyFsFormUploadApi());
  g.registerSingleton(MyFsDetailGetApi());
  g.registerSingleton(MyFsSearchApi());
  g.registerSingleton(MyAuthMeApi());
  g.registerSingleton(MyPublicFetchRawApi());
  g.registerSingleton(TokenIns());
  g.registerSingleton(MyDownloadApi());
}

//
