part of 'part.dart';

class InstanceTool {
  static void init() {
    _getIt();
  }

  static void _getIt() {
    GetIt.instance.registerSingleton(AccountManager());
    GetIt.instance.registerSingleton(IsarTool());
    GetIt.instance.registerSingleton(DioInstance());
    registerApi();
  }
}
