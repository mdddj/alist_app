part of 'part.dart';

///列出目录
class MyFsListApi extends MyApiBase<FsListResult> {
  MyFsListApi() : super('/api/fs/list', method: HttpMethod.post);

  @override
  FsListResult fromMap(JSON data) => FsListResult.fromJson(data);
}

///创建新文件夹
class MyFsCreateNewFolderApi extends MyBaseResultApi {
  MyFsCreateNewFolderApi() : super('/api/fs/mkdir', method: HttpMethod.post);
}

///重命名文件夹
class MyFsRenameFolderApi extends MyBaseResultApi {
  MyFsRenameFolderApi() : super("/api/fs/rename", method: HttpMethod.post);
}

///表单上传文件
class MyFsFormUploadApi extends MyBaseResultApi {
  MyFsFormUploadApi() : super("/api/fs/form", method: HttpMethod.post);
}

///获取文件的详细信息
class MyFsDetailGetApi extends MyApiBase<FsDetailInfo> {
  MyFsDetailGetApi() : super('/api/fs/get', method: HttpMethod.post);

  @override
  FsDetailInfo fromMap(Map<String, dynamic> data) =>
      FsDetailInfo.fromJson(data);
}

///搜索
class MyFsSearchApi extends MyApiBase<FsSearchResult> {
  MyFsSearchApi() : super("/api/fs/search", method: HttpMethod.post);

  @override
  FsSearchResult fromMap(Map<String, dynamic> data) {
    return FsSearchResult.fromJson(data);
  }
}

///删除文件或者目录
class MyFsRemoveApi extends MyBaseResultApi {
  MyFsRemoveApi(MyFsRemoveApiParam param)
      : super('/api/fs/remove', method: HttpMethod.post) {
    super.params.addAll(param.toJson());
  }
}

///删除空的文件夹
class MyFsRemoveEmptyFolderApi extends MyBaseResultApi {
  MyFsRemoveEmptyFolderApi(MyFsRemoveEmptyFolderParam param)
      : super('/api/fs/remove_empty_directory', method: HttpMethod.post) {
    super.params.addAll(param.toJson());
  }
}

///复制文件的接口
class MyFsCopyFileApi extends MyBaseResultApi {
  MyFsCopyFileApi(MyFsCopyApiParam param)
      : super('/api/fs/copy', method: HttpMethod.post) {
    super.params.addAll(param.toJson());
  }
}

///聚合移动接口
class MyFsRecursiveMoveApi extends MyBaseResultApi {
  MyFsRecursiveMoveApi(MyFsRecursiveMoveApiParam param)
      : super('/api/fs/recursive_move', method: HttpMethod.post) {
    super.params.addAll(param.toJson());
  }
}

///移动文件接口
class MyFsMoveFileApi extends MyBaseResultApi {
  MyFsMoveFileApi(MyFsMoveFileApiParam param)
      : super('/api/fs/move', method: HttpMethod.post) {
    super.params.addAll(param.toJson());
  }
}

///重命名接口
class MyFsRenameApi extends MyBaseResultApi {
  /// 重命名接口,批量重命名,和正则重命名同一个函数
  /// [isRegex] - 是否使用正则重命名
  /// [param] - 参数
  MyFsRenameApi(bool isRegex, MyFsRenameParam param)
      : super(isRegex ? '/api/fs/regex_rename' : '/api/fs/batch_rename',
            method: HttpMethod.post);
}

///流式上传文件 /api/fs/put
class MyFsPutFileApi extends MyBaseResultApi {
  static String txtContent = 'text/plain; charset=UTF-8';

  MyFsPutFileApi() : super('/api/fs/put', method: HttpMethod.put);
}


///下载接口
class MyDownloadApi extends MyBaseResultApi {
  MyDownloadApi():super('/');
  @override
  BaseResult? fromResponseBody(ResponseBody data) {
    return const BaseResult(code: 0,message: "上传成功");
  }
}