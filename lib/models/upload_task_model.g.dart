// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_task_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TaskModelCWProxy {
  TaskModel status(UploadTaskStatus status);

  TaskModel file(File? file);

  TaskModel directory(Directory? directory);

  TaskModel isDirection(bool isDirection);

  TaskModel serverPath(String serverPath);

  TaskModel uploadFailError(GlobalError? uploadFailError);

  TaskModel current(double current);

  TaskModel total(double total);

  TaskModel startTime(DateTime startTime);

  TaskModel endTime(DateTime? endTime);

  TaskModel cancelToken(CancelToken? cancelToken);

  TaskModel id(String id);

  TaskModel groupId(String groupId);

  TaskModel domain(DomainAccount? domain);

  TaskModel taskType(TaskType taskType);

  TaskModel downloadUrl(String? downloadUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskModel call({
    UploadTaskStatus? status,
    File? file,
    Directory? directory,
    bool? isDirection,
    String? serverPath,
    GlobalError? uploadFailError,
    double? current,
    double? total,
    DateTime? startTime,
    DateTime? endTime,
    CancelToken? cancelToken,
    String? id,
    String? groupId,
    DomainAccount? domain,
    TaskType? taskType,
    String? downloadUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTaskModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTaskModel.copyWith.fieldName(...)`
class _$TaskModelCWProxyImpl implements _$TaskModelCWProxy {
  const _$TaskModelCWProxyImpl(this._value);

  final TaskModel _value;

  @override
  TaskModel status(UploadTaskStatus status) => this(status: status);

  @override
  TaskModel file(File? file) => this(file: file);

  @override
  TaskModel directory(Directory? directory) => this(directory: directory);

  @override
  TaskModel isDirection(bool isDirection) => this(isDirection: isDirection);

  @override
  TaskModel serverPath(String serverPath) => this(serverPath: serverPath);

  @override
  TaskModel uploadFailError(GlobalError? uploadFailError) =>
      this(uploadFailError: uploadFailError);

  @override
  TaskModel current(double current) => this(current: current);

  @override
  TaskModel total(double total) => this(total: total);

  @override
  TaskModel startTime(DateTime startTime) => this(startTime: startTime);

  @override
  TaskModel endTime(DateTime? endTime) => this(endTime: endTime);

  @override
  TaskModel cancelToken(CancelToken? cancelToken) =>
      this(cancelToken: cancelToken);

  @override
  TaskModel id(String id) => this(id: id);

  @override
  TaskModel groupId(String groupId) => this(groupId: groupId);

  @override
  TaskModel domain(DomainAccount? domain) => this(domain: domain);

  @override
  TaskModel taskType(TaskType taskType) => this(taskType: taskType);

  @override
  TaskModel downloadUrl(String? downloadUrl) => this(downloadUrl: downloadUrl);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskModel call({
    Object? status = const $CopyWithPlaceholder(),
    Object? file = const $CopyWithPlaceholder(),
    Object? directory = const $CopyWithPlaceholder(),
    Object? isDirection = const $CopyWithPlaceholder(),
    Object? serverPath = const $CopyWithPlaceholder(),
    Object? uploadFailError = const $CopyWithPlaceholder(),
    Object? current = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? startTime = const $CopyWithPlaceholder(),
    Object? endTime = const $CopyWithPlaceholder(),
    Object? cancelToken = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? groupId = const $CopyWithPlaceholder(),
    Object? domain = const $CopyWithPlaceholder(),
    Object? taskType = const $CopyWithPlaceholder(),
    Object? downloadUrl = const $CopyWithPlaceholder(),
  }) {
    return TaskModel(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as UploadTaskStatus,
      file: file == const $CopyWithPlaceholder()
          ? _value.file
          // ignore: cast_nullable_to_non_nullable
          : file as File?,
      directory: directory == const $CopyWithPlaceholder()
          ? _value.directory
          // ignore: cast_nullable_to_non_nullable
          : directory as Directory?,
      isDirection:
          isDirection == const $CopyWithPlaceholder() || isDirection == null
              ? _value.isDirection
              // ignore: cast_nullable_to_non_nullable
              : isDirection as bool,
      serverPath:
          serverPath == const $CopyWithPlaceholder() || serverPath == null
              ? _value.serverPath
              // ignore: cast_nullable_to_non_nullable
              : serverPath as String,
      uploadFailError: uploadFailError == const $CopyWithPlaceholder()
          ? _value.uploadFailError
          // ignore: cast_nullable_to_non_nullable
          : uploadFailError as GlobalError?,
      current: current == const $CopyWithPlaceholder() || current == null
          ? _value.current
          // ignore: cast_nullable_to_non_nullable
          : current as double,
      total: total == const $CopyWithPlaceholder() || total == null
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as double,
      startTime: startTime == const $CopyWithPlaceholder() || startTime == null
          ? _value.startTime
          // ignore: cast_nullable_to_non_nullable
          : startTime as DateTime,
      endTime: endTime == const $CopyWithPlaceholder()
          ? _value.endTime
          // ignore: cast_nullable_to_non_nullable
          : endTime as DateTime?,
      cancelToken: cancelToken == const $CopyWithPlaceholder()
          ? _value.cancelToken
          // ignore: cast_nullable_to_non_nullable
          : cancelToken as CancelToken?,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      groupId: groupId == const $CopyWithPlaceholder() || groupId == null
          ? _value.groupId
          // ignore: cast_nullable_to_non_nullable
          : groupId as String,
      domain: domain == const $CopyWithPlaceholder()
          ? _value.domain
          // ignore: cast_nullable_to_non_nullable
          : domain as DomainAccount?,
      taskType: taskType == const $CopyWithPlaceholder() || taskType == null
          ? _value.taskType
          // ignore: cast_nullable_to_non_nullable
          : taskType as TaskType,
      downloadUrl: downloadUrl == const $CopyWithPlaceholder()
          ? _value.downloadUrl
          // ignore: cast_nullable_to_non_nullable
          : downloadUrl as String?,
    );
  }
}

extension $TaskModelCopyWith on TaskModel {
  /// Returns a callable class that can be used as follows: `instanceOfTaskModel.copyWith(...)` or like so:`instanceOfTaskModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TaskModelCWProxy get copyWith => _$TaskModelCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskModelCollection on Isar {
  IsarCollection<TaskModel> get taskModels => this.collection();
}

const TaskModelSchema = CollectionSchema(
  name: r'TaskModel',
  id: -1192054402460482572,
  properties: {
    r'current': PropertySchema(
      id: 0,
      name: r'current',
      type: IsarType.double,
    ),
    r'directoryPath': PropertySchema(
      id: 1,
      name: r'directoryPath',
      type: IsarType.string,
    ),
    r'domainJsonString': PropertySchema(
      id: 2,
      name: r'domainJsonString',
      type: IsarType.string,
    ),
    r'domainName': PropertySchema(
      id: 3,
      name: r'domainName',
      type: IsarType.string,
    ),
    r'domainUrl': PropertySchema(
      id: 4,
      name: r'domainUrl',
      type: IsarType.string,
    ),
    r'downloadUrl': PropertySchema(
      id: 5,
      name: r'downloadUrl',
      type: IsarType.string,
    ),
    r'endTime': PropertySchema(
      id: 6,
      name: r'endTime',
      type: IsarType.dateTime,
    ),
    r'filePath': PropertySchema(
      id: 7,
      name: r'filePath',
      type: IsarType.string,
    ),
    r'groupId': PropertySchema(
      id: 8,
      name: r'groupId',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 9,
      name: r'id',
      type: IsarType.string,
    ),
    r'isDirection': PropertySchema(
      id: 10,
      name: r'isDirection',
      type: IsarType.bool,
    ),
    r'serverPath': PropertySchema(
      id: 11,
      name: r'serverPath',
      type: IsarType.string,
    ),
    r'startTime': PropertySchema(
      id: 12,
      name: r'startTime',
      type: IsarType.dateTime,
    ),
    r'status': PropertySchema(
      id: 13,
      name: r'status',
      type: IsarType.byte,
      enumMap: _TaskModelstatusEnumValueMap,
    ),
    r'taskType': PropertySchema(
      id: 14,
      name: r'taskType',
      type: IsarType.byte,
      enumMap: _TaskModeltaskTypeEnumValueMap,
    ),
    r'total': PropertySchema(
      id: 15,
      name: r'total',
      type: IsarType.double,
    )
  },
  estimateSize: _taskModelEstimateSize,
  serialize: _taskModelSerialize,
  deserialize: _taskModelDeserialize,
  deserializeProp: _taskModelDeserializeProp,
  idName: r'sqlId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _taskModelGetId,
  getLinks: _taskModelGetLinks,
  attach: _taskModelAttach,
  version: '3.1.0+1',
);

int _taskModelEstimateSize(
  TaskModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.directoryPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.domainJsonString.length * 3;
  {
    final value = object.domainName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.domainUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.downloadUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.filePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.groupId.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.serverPath.length * 3;
  return bytesCount;
}

void _taskModelSerialize(
  TaskModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.current);
  writer.writeString(offsets[1], object.directoryPath);
  writer.writeString(offsets[2], object.domainJsonString);
  writer.writeString(offsets[3], object.domainName);
  writer.writeString(offsets[4], object.domainUrl);
  writer.writeString(offsets[5], object.downloadUrl);
  writer.writeDateTime(offsets[6], object.endTime);
  writer.writeString(offsets[7], object.filePath);
  writer.writeString(offsets[8], object.groupId);
  writer.writeString(offsets[9], object.id);
  writer.writeBool(offsets[10], object.isDirection);
  writer.writeString(offsets[11], object.serverPath);
  writer.writeDateTime(offsets[12], object.startTime);
  writer.writeByte(offsets[13], object.status.index);
  writer.writeByte(offsets[14], object.taskType.index);
  writer.writeDouble(offsets[15], object.total);
}

TaskModel _taskModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskModel(
    current: reader.readDoubleOrNull(offsets[0]) ?? 0,
    downloadUrl: reader.readStringOrNull(offsets[5]),
    endTime: reader.readDateTimeOrNull(offsets[6]),
    groupId: reader.readStringOrNull(offsets[8]) ?? '',
    id: reader.readStringOrNull(offsets[9]) ?? '',
    isDirection: reader.readBoolOrNull(offsets[10]) ?? false,
    serverPath: reader.readStringOrNull(offsets[11]) ?? '',
    startTime: reader.readDateTime(offsets[12]),
    status: _TaskModelstatusValueEnumMap[reader.readByteOrNull(offsets[13])] ??
        UploadTaskStatus.none,
    taskType:
        _TaskModeltaskTypeValueEnumMap[reader.readByteOrNull(offsets[14])] ??
            TaskType.upload,
    total: reader.readDoubleOrNull(offsets[15]) ?? 0,
  );
  object.directoryPath = reader.readStringOrNull(offsets[1]);
  object.domainJsonString = reader.readString(offsets[2]);
  object.domainName = reader.readStringOrNull(offsets[3]);
  object.domainUrl = reader.readStringOrNull(offsets[4]);
  object.filePath = reader.readStringOrNull(offsets[7]);
  object.sqlId = id;
  return object;
}

P _taskModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 9:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 10:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 11:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (_TaskModelstatusValueEnumMap[reader.readByteOrNull(offset)] ??
          UploadTaskStatus.none) as P;
    case 14:
      return (_TaskModeltaskTypeValueEnumMap[reader.readByteOrNull(offset)] ??
          TaskType.upload) as P;
    case 15:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TaskModelstatusEnumValueMap = {
  'none': 0,
  'uploading': 1,
  'success': 2,
  'error': 3,
  'cancel': 4,
  'downloading': 5,
};
const _TaskModelstatusValueEnumMap = {
  0: UploadTaskStatus.none,
  1: UploadTaskStatus.uploading,
  2: UploadTaskStatus.success,
  3: UploadTaskStatus.error,
  4: UploadTaskStatus.cancel,
  5: UploadTaskStatus.downloading,
};
const _TaskModeltaskTypeEnumValueMap = {
  'upload': 0,
  'download': 1,
};
const _TaskModeltaskTypeValueEnumMap = {
  0: TaskType.upload,
  1: TaskType.download,
};

Id _taskModelGetId(TaskModel object) {
  return object.sqlId;
}

List<IsarLinkBase<dynamic>> _taskModelGetLinks(TaskModel object) {
  return [];
}

void _taskModelAttach(IsarCollection<dynamic> col, Id id, TaskModel object) {
  object.sqlId = id;
}

extension TaskModelQueryWhereSort
    on QueryBuilder<TaskModel, TaskModel, QWhere> {
  QueryBuilder<TaskModel, TaskModel, QAfterWhere> anySqlId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TaskModelQueryWhere
    on QueryBuilder<TaskModel, TaskModel, QWhereClause> {
  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> sqlIdEqualTo(Id sqlId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: sqlId,
        upper: sqlId,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> sqlIdNotEqualTo(
      Id sqlId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: sqlId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: sqlId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: sqlId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: sqlId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> sqlIdGreaterThan(
      Id sqlId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: sqlId, includeLower: include),
      );
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> sqlIdLessThan(Id sqlId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: sqlId, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> sqlIdBetween(
    Id lowerSqlId,
    Id upperSqlId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerSqlId,
        includeLower: includeLower,
        upper: upperSqlId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TaskModelQueryFilter
    on QueryBuilder<TaskModel, TaskModel, QFilterCondition> {
  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> currentEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'current',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> currentGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'current',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> currentLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'current',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> currentBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'current',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'directoryPath',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'directoryPath',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'directoryPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'directoryPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'directoryPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'directoryPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'directoryPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'directoryPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'directoryPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'directoryPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'directoryPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      directoryPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'directoryPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainJsonString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'domainJsonString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'domainJsonString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'domainJsonString',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'domainJsonString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'domainJsonString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'domainJsonString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'domainJsonString',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainJsonString',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainJsonStringIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'domainJsonString',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'domainName',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'domainName',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'domainName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'domainName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'domainName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'domainName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'domainName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'domainName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'domainName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'domainName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'domainUrl',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'domainUrl',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'domainUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'domainUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'domainUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'domainUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'domainUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'domainUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'domainUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> domainUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      domainUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'domainUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      downloadUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'downloadUrl',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      downloadUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'downloadUrl',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> downloadUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'downloadUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      downloadUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'downloadUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> downloadUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'downloadUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> downloadUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'downloadUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      downloadUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'downloadUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> downloadUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'downloadUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> downloadUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'downloadUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> downloadUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'downloadUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      downloadUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'downloadUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      downloadUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'downloadUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> endTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endTime',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> endTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endTime',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> endTimeEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> endTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> endTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> endTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'filePath',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      filePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'filePath',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'filePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'filePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> filePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filePath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      filePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'filePath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> groupIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> groupIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> groupIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> groupIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> groupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> groupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> groupIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> groupIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> groupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      groupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> isDirectionEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDirection',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> serverPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serverPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      serverPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serverPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> serverPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serverPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> serverPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serverPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      serverPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serverPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> serverPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serverPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> serverPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serverPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> serverPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serverPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      serverPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serverPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      serverPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serverPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> sqlIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sqlId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> sqlIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sqlId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> sqlIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sqlId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> sqlIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sqlId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> startTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      startTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> startTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> startTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> statusEqualTo(
      UploadTaskStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> statusGreaterThan(
    UploadTaskStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> statusLessThan(
    UploadTaskStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> statusBetween(
    UploadTaskStatus lower,
    UploadTaskStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> taskTypeEqualTo(
      TaskType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskType',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> taskTypeGreaterThan(
    TaskType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskType',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> taskTypeLessThan(
    TaskType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskType',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> taskTypeBetween(
    TaskType lower,
    TaskType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> totalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> totalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> totalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> totalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'total',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension TaskModelQueryObject
    on QueryBuilder<TaskModel, TaskModel, QFilterCondition> {}

extension TaskModelQueryLinks
    on QueryBuilder<TaskModel, TaskModel, QFilterCondition> {}

extension TaskModelQuerySortBy on QueryBuilder<TaskModel, TaskModel, QSortBy> {
  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByCurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDirectoryPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directoryPath', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDirectoryPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directoryPath', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDomainJsonString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainJsonString', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy>
      sortByDomainJsonStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainJsonString', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDomainName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainName', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDomainNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainName', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDomainUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainUrl', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDomainUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainUrl', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDownloadUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadUrl', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDownloadUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadUrl', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByEndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endTime', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByEndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endTime', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByFilePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByFilePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByIsDirection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDirection', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByIsDirectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDirection', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByServerPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serverPath', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByServerPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serverPath', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByStartTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByTaskType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskType', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByTaskTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskType', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }
}

extension TaskModelQuerySortThenBy
    on QueryBuilder<TaskModel, TaskModel, QSortThenBy> {
  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByCurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDirectoryPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directoryPath', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDirectoryPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'directoryPath', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDomainJsonString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainJsonString', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy>
      thenByDomainJsonStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainJsonString', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDomainName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainName', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDomainNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainName', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDomainUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainUrl', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDomainUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainUrl', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDownloadUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadUrl', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDownloadUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadUrl', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByEndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endTime', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByEndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endTime', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByFilePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByFilePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByIsDirection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDirection', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByIsDirectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDirection', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByServerPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serverPath', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByServerPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serverPath', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenBySqlId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sqlId', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenBySqlIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sqlId', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByStartTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByTaskType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskType', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByTaskTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskType', Sort.desc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }
}

extension TaskModelQueryWhereDistinct
    on QueryBuilder<TaskModel, TaskModel, QDistinct> {
  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'current');
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByDirectoryPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'directoryPath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByDomainJsonString(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'domainJsonString',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByDomainName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'domainName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByDomainUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'domainUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByDownloadUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'downloadUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByEndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endTime');
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByFilePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'filePath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByGroupId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByIsDirection() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDirection');
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByServerPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serverPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startTime');
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByTaskType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taskType');
    });
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'total');
    });
  }
}

extension TaskModelQueryProperty
    on QueryBuilder<TaskModel, TaskModel, QQueryProperty> {
  QueryBuilder<TaskModel, int, QQueryOperations> sqlIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sqlId');
    });
  }

  QueryBuilder<TaskModel, double, QQueryOperations> currentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'current');
    });
  }

  QueryBuilder<TaskModel, String?, QQueryOperations> directoryPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'directoryPath');
    });
  }

  QueryBuilder<TaskModel, String, QQueryOperations> domainJsonStringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'domainJsonString');
    });
  }

  QueryBuilder<TaskModel, String?, QQueryOperations> domainNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'domainName');
    });
  }

  QueryBuilder<TaskModel, String?, QQueryOperations> domainUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'domainUrl');
    });
  }

  QueryBuilder<TaskModel, String?, QQueryOperations> downloadUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'downloadUrl');
    });
  }

  QueryBuilder<TaskModel, DateTime?, QQueryOperations> endTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endTime');
    });
  }

  QueryBuilder<TaskModel, String?, QQueryOperations> filePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'filePath');
    });
  }

  QueryBuilder<TaskModel, String, QQueryOperations> groupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupId');
    });
  }

  QueryBuilder<TaskModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TaskModel, bool, QQueryOperations> isDirectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDirection');
    });
  }

  QueryBuilder<TaskModel, String, QQueryOperations> serverPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serverPath');
    });
  }

  QueryBuilder<TaskModel, DateTime, QQueryOperations> startTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startTime');
    });
  }

  QueryBuilder<TaskModel, UploadTaskStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<TaskModel, TaskType, QQueryOperations> taskTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskType');
    });
  }

  QueryBuilder<TaskModel, double, QQueryOperations> totalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'total');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      status: $enumDecodeNullable(_$UploadTaskStatusEnumMap, json['status']) ??
          UploadTaskStatus.none,
      isDirection: json['isDirection'] as bool? ?? false,
      serverPath: json['serverPath'] as String? ?? '',
      current: (json['current'] as num?)?.toDouble() ?? 0,
      total: (json['total'] as num?)?.toDouble() ?? 0,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      id: json['id'] as String? ?? '',
      groupId: json['groupId'] as String? ?? '',
      domain: json['domain'] == null
          ? null
          : DomainAccount.fromJson(json['domain']),
      taskType: $enumDecodeNullable(_$TaskTypeEnumMap, json['taskType']) ??
          TaskType.upload,
      downloadUrl: json['downloadUrl'] as String?,
    )
      ..filePath = json['filePath'] as String?
      ..directoryPath = json['directoryPath'] as String?
      ..domainUrl = json['domainUrl'] as String?
      ..domainName = json['domainName'] as String?
      ..sqlId = (json['sqlId'] as num).toInt()
      ..domainJsonString = json['domainJsonString'] as String;

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'status': _$UploadTaskStatusEnumMap[instance.status]!,
      'isDirection': instance.isDirection,
      'serverPath': instance.serverPath,
      'current': instance.current,
      'total': instance.total,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'taskType': _$TaskTypeEnumMap[instance.taskType]!,
      'filePath': instance.filePath,
      'directoryPath': instance.directoryPath,
      'domainUrl': instance.domainUrl,
      'domainName': instance.domainName,
      'id': instance.id,
      'sqlId': instance.sqlId,
      'groupId': instance.groupId,
      'domain': instance.domain,
      'domainJsonString': instance.domainJsonString,
      'downloadUrl': instance.downloadUrl,
    };

const _$UploadTaskStatusEnumMap = {
  UploadTaskStatus.none: 'none',
  UploadTaskStatus.uploading: 'uploading',
  UploadTaskStatus.success: 'success',
  UploadTaskStatus.error: 'error',
  UploadTaskStatus.cancel: 'cancel',
  UploadTaskStatus.downloading: 'downloading',
};

const _$TaskTypeEnumMap = {
  TaskType.upload: 'upload',
  TaskType.download: 'download',
};
