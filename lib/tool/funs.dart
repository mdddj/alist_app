part of 'part.dart';

bool isMobile() => myPlatform.isMobile;

///使用这个方法函数需要使用get it注册单例
void requestDialog<A extends MyApiBase<T>, T>(ValueChanged<T> success,
    {R? options, VoidCallback? onError}) {
  LB.show<T, A>(GetIt.instance.get<A>(),
      successResult: success,
      params: options, errorHandle: (exception, errorStack) {
    onError?.call();
    if (exception is GlobalError) {
      return exception.getMessage();
    }
    return "$exception";
  }, loadingWidget: const Center(child: CircularProgressIndicator()));
}

///弹出登录窗口
void showLoginDialog({Widget? extra}) {
  SmartDialog.show(
      builder: (context) {
        return LoginDialog(extra: extra);
      },
      tag: LoginDialog.tag);
}

typedef TryRequest<T> = Future<T> Function();

Future<T?> tryRequest<T>(TryRequest<T> fun,
    {VoidCallback? success, ValueChanged<GlobalError>? error}) async {
  try {
    final r = await fun();
    success?.call();
    return r;
  } on GlobalError catch (e) {
    error?.call(e);
  }
  return null;
}

Future<FsDetailInfo> getFsModel(String path) async {
  try {
    final result = await MyFsDetailGetApi()
        .request(R(loadingText: '加载中', data: {'path': path}));
    return result;
  } on GlobalError catch (e) {
    ToastUtil.showWarning(e.getMessage());
    return const FsDetailInfo();
  }
}

///获取目录下的所有文件。
Future<IList<File>> listFiles(String path) async {
  var list = IList<File>(const []);
  Directory directory = Directory(path);
  final isExists = await directory.exists();
  if (isExists) {
    List<FileSystemEntity> files = directory.listSync(recursive: true);
    for (var file in files) {
      if (file is File) {
        list = list.add(file);
      }
    }
  }
  return list;
}

Color getInverseColor(Color color) {
  return Color.fromARGB(
    color.alpha,
    255 - color.red,
    255 - color.green,
    255 - color.blue,
  );
}
