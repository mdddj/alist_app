import 'package:collection/collection.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../actions/part.dart';

part 'my_file.freezed.dart';

final _videoExtensions = ['mp4', 'avi', 'mov', 'mkv', 'flv'];
final _imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'tif', 'ico'];
final _musicExtensions = ['flac', 'mp3'];

FileType createFileTypeFromPath(String path) {
  final pathExt = path.urlManager.extension.replaceAll('.', '').toLowerCase();
  if (_videoExtensions.contains(pathExt)) {
    return FileType.video;
  }
  if (_imageExtensions.contains(pathExt)) {
    return FileType.image;
  }
  if (_musicExtensions.contains(pathExt)) {
    return FileType.music;
  }

  return FileType.values
          .firstWhereOrNull((element) => element.ext == pathExt) ??
      FileType.unknown;
}

extension FileTypeEx on FileType {
  IList<FileAction> findActions() {
    var list = IList<FileAction>(const []);
    for (var element in defineActions) {
      if (element.menu.supports.contains(this)) {
        list = list.add(element);
      }
    }
    return list;
  }
}

enum FileType {
  txt('txt'),
  md('md'),
  image("image"),
  video("video"),
  json('json'),
  html('html'),
  ipa('ipa'),
  exe('exe'),
  apk('apk'),
  pdf('pdf'),
  bin('bin'),
  zip('zip'),
  iso('iso'),
  dll('dll'),
  mkv('mkv'),
  document("doc"),
  docx('docx'),
  rar('rar'),
  jar('jar'),
  mobi('mobi'),
  epub('epub'),
  azw3('azw3'),
  music('music'),
  ppt('ppt'),
  pptx('pptx'),
  xlsx('xlsx'),
  z7('7z'),
  py('py'),
  pkg('pkg'),
  xls('xls'),
  appx('appx'),
  cab('cab'),
  css('css'),
  pem('pem'),
  unknown("unknown"),
  js('js'),
  folder("folder");

  const FileType(this.ext);

  final String ext;
}

@freezed
class FileHandleMenu with _$FileHandleMenu {
  const factory FileHandleMenu(
      {
      ///支持的文件
      required List<FileType> supports,
      required String title}) = _FileHandleMenu;
}
