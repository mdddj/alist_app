// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VersionInfo _$VersionInfoFromJson(Map<String, dynamic> json) {
  return _VersionInfo.fromJson(json);
}

/// @nodoc
mixin _$VersionInfo {
  @JsonKey(name: 'createDate')
  String get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'downloadUrl')
  String get downloadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'enable')
  bool get enable => throw _privateConstructorUsedError;
  @JsonKey(name: 'htmlViewPage')
  String get htmlViewPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'packageSize')
  int get packageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform')
  String get platform => throw _privateConstructorUsedError;
  @JsonKey(name: 'project')
  Project get project => throw _privateConstructorUsedError;
  @JsonKey(name: 'projectName')
  String get projectName => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'versionNumber')
  String get versionNumber => throw _privateConstructorUsedError;

  ///本地址,当前版本
  String? get currentVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionInfoCopyWith<VersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionInfoCopyWith<$Res> {
  factory $VersionInfoCopyWith(
          VersionInfo value, $Res Function(VersionInfo) then) =
      _$VersionInfoCopyWithImpl<$Res, VersionInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'createDate') String createDate,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'downloadUrl') String downloadUrl,
      @JsonKey(name: 'enable') bool enable,
      @JsonKey(name: 'htmlViewPage') String htmlViewPage,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'packageSize') int packageSize,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'project') Project project,
      @JsonKey(name: 'projectName') String projectName,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'versionNumber') String versionNumber,
      String? currentVersion});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class _$VersionInfoCopyWithImpl<$Res, $Val extends VersionInfo>
    implements $VersionInfoCopyWith<$Res> {
  _$VersionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createDate = null,
    Object? description = null,
    Object? downloadUrl = null,
    Object? enable = null,
    Object? htmlViewPage = null,
    Object? id = null,
    Object? packageSize = null,
    Object? platform = null,
    Object? project = null,
    Object? projectName = null,
    Object? title = null,
    Object? versionNumber = null,
    Object? currentVersion = freezed,
  }) {
    return _then(_value.copyWith(
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlViewPage: null == htmlViewPage
          ? _value.htmlViewPage
          : htmlViewPage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      packageSize: null == packageSize
          ? _value.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      versionNumber: null == versionNumber
          ? _value.versionNumber
          : versionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      currentVersion: freezed == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VersionInfoImplCopyWith<$Res>
    implements $VersionInfoCopyWith<$Res> {
  factory _$$VersionInfoImplCopyWith(
          _$VersionInfoImpl value, $Res Function(_$VersionInfoImpl) then) =
      __$$VersionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'createDate') String createDate,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'downloadUrl') String downloadUrl,
      @JsonKey(name: 'enable') bool enable,
      @JsonKey(name: 'htmlViewPage') String htmlViewPage,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'packageSize') int packageSize,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'project') Project project,
      @JsonKey(name: 'projectName') String projectName,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'versionNumber') String versionNumber,
      String? currentVersion});

  @override
  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$VersionInfoImplCopyWithImpl<$Res>
    extends _$VersionInfoCopyWithImpl<$Res, _$VersionInfoImpl>
    implements _$$VersionInfoImplCopyWith<$Res> {
  __$$VersionInfoImplCopyWithImpl(
      _$VersionInfoImpl _value, $Res Function(_$VersionInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createDate = null,
    Object? description = null,
    Object? downloadUrl = null,
    Object? enable = null,
    Object? htmlViewPage = null,
    Object? id = null,
    Object? packageSize = null,
    Object? platform = null,
    Object? project = null,
    Object? projectName = null,
    Object? title = null,
    Object? versionNumber = null,
    Object? currentVersion = freezed,
  }) {
    return _then(_$VersionInfoImpl(
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlViewPage: null == htmlViewPage
          ? _value.htmlViewPage
          : htmlViewPage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      packageSize: null == packageSize
          ? _value.packageSize
          : packageSize // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      versionNumber: null == versionNumber
          ? _value.versionNumber
          : versionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      currentVersion: freezed == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionInfoImpl extends _VersionInfo {
  const _$VersionInfoImpl(
      {@JsonKey(name: 'createDate') this.createDate = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'downloadUrl') this.downloadUrl = '',
      @JsonKey(name: 'enable') this.enable = false,
      @JsonKey(name: 'htmlViewPage') this.htmlViewPage = '',
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'packageSize') this.packageSize = 0,
      @JsonKey(name: 'platform') this.platform = '',
      @JsonKey(name: 'project') this.project = const Project(),
      @JsonKey(name: 'projectName') this.projectName = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'versionNumber') this.versionNumber = '',
      this.currentVersion})
      : super._();

  factory _$VersionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionInfoImplFromJson(json);

  @override
  @JsonKey(name: 'createDate')
  final String createDate;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'downloadUrl')
  final String downloadUrl;
  @override
  @JsonKey(name: 'enable')
  final bool enable;
  @override
  @JsonKey(name: 'htmlViewPage')
  final String htmlViewPage;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'packageSize')
  final int packageSize;
  @override
  @JsonKey(name: 'platform')
  final String platform;
  @override
  @JsonKey(name: 'project')
  final Project project;
  @override
  @JsonKey(name: 'projectName')
  final String projectName;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'versionNumber')
  final String versionNumber;

  ///本地址,当前版本
  @override
  final String? currentVersion;

  @override
  String toString() {
    return 'VersionInfo(createDate: $createDate, description: $description, downloadUrl: $downloadUrl, enable: $enable, htmlViewPage: $htmlViewPage, id: $id, packageSize: $packageSize, platform: $platform, project: $project, projectName: $projectName, title: $title, versionNumber: $versionNumber, currentVersion: $currentVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionInfoImpl &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.htmlViewPage, htmlViewPage) ||
                other.htmlViewPage == htmlViewPage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageSize, packageSize) ||
                other.packageSize == packageSize) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.versionNumber, versionNumber) ||
                other.versionNumber == versionNumber) &&
            (identical(other.currentVersion, currentVersion) ||
                other.currentVersion == currentVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createDate,
      description,
      downloadUrl,
      enable,
      htmlViewPage,
      id,
      packageSize,
      platform,
      project,
      projectName,
      title,
      versionNumber,
      currentVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionInfoImplCopyWith<_$VersionInfoImpl> get copyWith =>
      __$$VersionInfoImplCopyWithImpl<_$VersionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionInfoImplToJson(
      this,
    );
  }
}

abstract class _VersionInfo extends VersionInfo {
  const factory _VersionInfo(
      {@JsonKey(name: 'createDate') final String createDate,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'downloadUrl') final String downloadUrl,
      @JsonKey(name: 'enable') final bool enable,
      @JsonKey(name: 'htmlViewPage') final String htmlViewPage,
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'packageSize') final int packageSize,
      @JsonKey(name: 'platform') final String platform,
      @JsonKey(name: 'project') final Project project,
      @JsonKey(name: 'projectName') final String projectName,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'versionNumber') final String versionNumber,
      final String? currentVersion}) = _$VersionInfoImpl;
  const _VersionInfo._() : super._();

  factory _VersionInfo.fromJson(Map<String, dynamic> json) =
      _$VersionInfoImpl.fromJson;

  @override
  @JsonKey(name: 'createDate')
  String get createDate;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'downloadUrl')
  String get downloadUrl;
  @override
  @JsonKey(name: 'enable')
  bool get enable;
  @override
  @JsonKey(name: 'htmlViewPage')
  String get htmlViewPage;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'packageSize')
  int get packageSize;
  @override
  @JsonKey(name: 'platform')
  String get platform;
  @override
  @JsonKey(name: 'project')
  Project get project;
  @override
  @JsonKey(name: 'projectName')
  String get projectName;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'versionNumber')
  String get versionNumber;
  @override

  ///本地址,当前版本
  String? get currentVersion;
  @override
  @JsonKey(ignore: true)
  _$$VersionInfoImplCopyWith<_$VersionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'downloadUrl')
  String get downloadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'github')
  String get github => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'previewUrl')
  String get previewUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String description,
      @JsonKey(name: 'downloadUrl') String downloadUrl,
      @JsonKey(name: 'github') String github,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'logo') String logo,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'previewUrl') String previewUrl});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? downloadUrl = null,
    Object? github = null,
    Object? id = null,
    Object? logo = null,
    Object? name = null,
    Object? previewUrl = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      github: null == github
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String description,
      @JsonKey(name: 'downloadUrl') String downloadUrl,
      @JsonKey(name: 'github') String github,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'logo') String logo,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'previewUrl') String previewUrl});
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? downloadUrl = null,
    Object? github = null,
    Object? id = null,
    Object? logo = null,
    Object? name = null,
    Object? previewUrl = null,
  }) {
    return _then(_$ProjectImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      github: null == github
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl extends _Project {
  const _$ProjectImpl(
      {@JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'downloadUrl') this.downloadUrl = '',
      @JsonKey(name: 'github') this.github = '',
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'logo') this.logo = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'previewUrl') this.previewUrl = ''})
      : super._();

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'downloadUrl')
  final String downloadUrl;
  @override
  @JsonKey(name: 'github')
  final String github;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'logo')
  final String logo;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'previewUrl')
  final String previewUrl;

  @override
  String toString() {
    return 'Project(description: $description, downloadUrl: $downloadUrl, github: $github, id: $id, logo: $logo, name: $name, previewUrl: $previewUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.github, github) || other.github == github) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, downloadUrl, github,
      id, logo, name, previewUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project extends Project {
  const factory _Project(
      {@JsonKey(name: 'description') final String description,
      @JsonKey(name: 'downloadUrl') final String downloadUrl,
      @JsonKey(name: 'github') final String github,
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'logo') final String logo,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'previewUrl') final String previewUrl}) = _$ProjectImpl;
  const _Project._() : super._();

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'downloadUrl')
  String get downloadUrl;
  @override
  @JsonKey(name: 'github')
  String get github;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'logo')
  String get logo;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'previewUrl')
  String get previewUrl;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
