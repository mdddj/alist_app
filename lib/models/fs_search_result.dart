import 'package:freezed_annotation/freezed_annotation.dart';

part 'fs_search_result.freezed.dart';
part 'fs_search_result.g.dart';


@freezed
class FsSearchResult with _$FsSearchResult {
  const FsSearchResult._();

  const factory FsSearchResult({
      @JsonKey(name: 'content') @Default([])  List<SearchContent> content,
      @JsonKey(name: 'total') @Default(0)  int total,
    }) = _FsSearchResult;
  
  factory FsSearchResult.fromJson(Map<String, dynamic> json) => _$FsSearchResultFromJson(json);

}


@freezed
class SearchContent with _$SearchContent {
  const SearchContent._();

  const factory SearchContent({
      @JsonKey(name: 'parent') @Default('')  String parent,
      @JsonKey(name: 'name') @Default('')  String name,
      @JsonKey(name: 'is_dir') @Default(false)  bool isDir,
      @JsonKey(name: 'size') @Default(0)  int size,
      @JsonKey(name: 'type') @Default(0)  int type,
    }) = _SearchContent;
  
  factory SearchContent.fromJson(Map<String, dynamic> json) => _$SearchContentFromJson(json);

}

