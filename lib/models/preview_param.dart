import 'package:dd_js_util/dd_js_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'fs_list.dart';

part 'preview_param.freezed.dart';


@freezed
class PreviewParam with _$PreviewParam {
  const PreviewParam._();

  const factory PreviewParam({
      @JsonKey(name: 'fileRawUrl') @Default('')  String fileRawUrl,
    @igFreezedJson required FsModel fsModel
    }) = _PreviewParam;
  

}

