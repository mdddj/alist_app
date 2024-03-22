import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_param.freezed.dart';
part 'download_param.g.dart';


extension DownloadParamEx on DownloadParam {
  Directory get directory => Directory(path);
}

@freezed
class DownloadParam with _$DownloadParam {
  const DownloadParam._();

  const factory DownloadParam({
      @JsonKey(name: 'path') @Default('')  String path,
      @JsonKey(name: 'url') @Default('')  String url,
    }) = _DownloadParam;
  
  factory DownloadParam.fromJson(Map<String, dynamic> json) => _$DownloadParamFromJson(json);

}

