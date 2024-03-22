part of 'part.dart';

///文件操作工具类
class MyFileTool {
  static MyFileTool get instance => GetIt.instance.get<MyFileTool>();

  ///导出站点列表
  Future<void> exportDomains() async {
    final domains = await AccountManager.instance.getDomains();
    if (domains.isNotEmpty) {
      final dir = await getADirectory();
      if (dir != null) {
        await saveAJsonFile(
          domains,
          dir,
          'aList-domains',
          onSuccess: (value) {
            showNoResourceDialog(
                AlertParam(title: '导出成功', content: '文件已保存到路径:${value.path}'));
          },
        );
      }
    }
  }

  ///导入站点列表
  Future<void> importDomains(
      {ValueChanged<IList<DomainAccount>>? onSuccess,VoidCallback? onError}) async {
    final file = await openFile(acceptedTypeGroups: myPlatform.isIos ? [] : [
      const XTypeGroup(extensions: ['json'], label: '符合 alist 站点列表的json配置文件')
    ]);
    if (file != null) {
      final jsonString = await file.readAsString();
      if (jsonString.isNotEmpty) {
        try {
          final list = importFromDynamicList(
              jsonDecode(jsonString) as List<dynamic>);
          onSuccess?.call(list);
        } catch (e) {
          ToastUtil.showWarning('导入失败，请检查 json格式');
          onError?.call();
        }
      }
    }
  }

  ///保存一个 json文件
  Future<void> saveAJsonFile(
      dynamic jsonData, Directory directory, String filename,
      {ValueChanged<File>? onSuccess}) async {
    try {
      if (!directory.existsSync()) {
        directory.createSync(recursive: true);
      }
      File jsonFile = File('${directory.path}/$filename.json');

      if (!jsonFile.existsSync()) {
        jsonFile.createSync();
      }
      // 将数据转换为 JSON 字符串
      String jsonString = jsonEncode(jsonData);
      jsonFile.writeAsStringSync(jsonString);
      onSuccess?.call(jsonFile);
    } catch (e) {
      toast('写入文件失败:$e');
    }
  }

  ///获取一个目录
  Future<Directory?> getADirectory() async {
    if (myPlatform.isIos) {
      final dir =
          await FilePicker.platform.getDirectoryPath(dialogTitle: "选择导出目录");
      if (dir != null) {
        debugPrint('选择导出目录:$dir');
        return Directory(dir);
      }
      return null;
    }
    final dirPath = await getDirectoryPath(confirmButtonText: '导出');
    if (dirPath != null) {
      return Directory(dirPath);
    }
    return null;
  }
}

bool isBase64Image(String base64Str) {
  try {
    // 尝试将Base64字符串解码为字节数据
    Uint8List bytes = base64.decode(base64Str);

    // 尝试解析字节数据为图片格式
    String mimeType = '';

    if (bytes.length >= 2) {
      if (bytes[0] == 0xFF && bytes[1] == 0xD8) {
        mimeType = 'image/jpeg'; // JPEG格式的图片
      } else if (bytes[0] == 0x89 && bytes[1] == 0x50) {
        mimeType = 'image/png'; // PNG格式的图片
      } else if (bytes[0] == 0x47 && bytes[1] == 0x49) {
        mimeType = 'image/gif'; // GIF格式的图片
      } else if (bytes[0] == 0x42 && bytes[1] == 0x4D) {
        mimeType = 'image/bmp'; // BMP格式的图片
      } else {
        mimeType = 'unknown'; // 未知格式
      }
    }
    return mimeType != 'unknown';
  } catch (e) {
    return false;
  }
}
