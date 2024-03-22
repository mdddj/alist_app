// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CollectModelCWProxy {
  CollectModel name(String name);

  CollectModel isFolder(bool isFolder);

  CollectModel fullPath(String fullPath);

  CollectModel folderId(int folderId);

  CollectModel siteId(int siteId);

  CollectModel id(int? id);

  CollectModel fileFolderPath(String? fileFolderPath);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectModel(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectModel call({
    String? name,
    bool? isFolder,
    String? fullPath,
    int? folderId,
    int? siteId,
    int? id,
    String? fileFolderPath,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCollectModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCollectModel.copyWith.fieldName(...)`
class _$CollectModelCWProxyImpl implements _$CollectModelCWProxy {
  const _$CollectModelCWProxyImpl(this._value);

  final CollectModel _value;

  @override
  CollectModel name(String name) => this(name: name);

  @override
  CollectModel isFolder(bool isFolder) => this(isFolder: isFolder);

  @override
  CollectModel fullPath(String fullPath) => this(fullPath: fullPath);

  @override
  CollectModel folderId(int folderId) => this(folderId: folderId);

  @override
  CollectModel siteId(int siteId) => this(siteId: siteId);

  @override
  CollectModel id(int? id) => this(id: id);

  @override
  CollectModel fileFolderPath(String? fileFolderPath) =>
      this(fileFolderPath: fileFolderPath);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectModel(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectModel call({
    Object? name = const $CopyWithPlaceholder(),
    Object? isFolder = const $CopyWithPlaceholder(),
    Object? fullPath = const $CopyWithPlaceholder(),
    Object? folderId = const $CopyWithPlaceholder(),
    Object? siteId = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? fileFolderPath = const $CopyWithPlaceholder(),
  }) {
    return CollectModel(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      isFolder: isFolder == const $CopyWithPlaceholder() || isFolder == null
          ? _value.isFolder
          // ignore: cast_nullable_to_non_nullable
          : isFolder as bool,
      fullPath: fullPath == const $CopyWithPlaceholder() || fullPath == null
          ? _value.fullPath
          // ignore: cast_nullable_to_non_nullable
          : fullPath as String,
      folderId: folderId == const $CopyWithPlaceholder() || folderId == null
          ? _value.folderId
          // ignore: cast_nullable_to_non_nullable
          : folderId as int,
      siteId: siteId == const $CopyWithPlaceholder() || siteId == null
          ? _value.siteId
          // ignore: cast_nullable_to_non_nullable
          : siteId as int,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      fileFolderPath: fileFolderPath == const $CopyWithPlaceholder()
          ? _value.fileFolderPath
          // ignore: cast_nullable_to_non_nullable
          : fileFolderPath as String?,
    );
  }
}

extension $CollectModelCopyWith on CollectModel {
  /// Returns a callable class that can be used as follows: `instanceOfCollectModel.copyWith(...)` or like so:`instanceOfCollectModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CollectModelCWProxy get copyWith => _$CollectModelCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCollectModelCollection on Isar {
  IsarCollection<CollectModel> get collectModels => this.collection();
}

const CollectModelSchema = CollectionSchema(
  name: r'CollectModel',
  id: 8268828647127112842,
  properties: {
    r'createDate': PropertySchema(
      id: 0,
      name: r'createDate',
      type: IsarType.dateTime,
    ),
    r'fileFolderPath': PropertySchema(
      id: 1,
      name: r'fileFolderPath',
      type: IsarType.string,
    ),
    r'folderId': PropertySchema(
      id: 2,
      name: r'folderId',
      type: IsarType.long,
    ),
    r'fullPath': PropertySchema(
      id: 3,
      name: r'fullPath',
      type: IsarType.string,
    ),
    r'isFolder': PropertySchema(
      id: 4,
      name: r'isFolder',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'siteId': PropertySchema(
      id: 6,
      name: r'siteId',
      type: IsarType.long,
    )
  },
  estimateSize: _collectModelEstimateSize,
  serialize: _collectModelSerialize,
  deserialize: _collectModelDeserialize,
  deserializeProp: _collectModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _collectModelGetId,
  getLinks: _collectModelGetLinks,
  attach: _collectModelAttach,
  version: '3.1.0+1',
);

int _collectModelEstimateSize(
  CollectModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.fileFolderPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.fullPath.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _collectModelSerialize(
  CollectModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createDate);
  writer.writeString(offsets[1], object.fileFolderPath);
  writer.writeLong(offsets[2], object.folderId);
  writer.writeString(offsets[3], object.fullPath);
  writer.writeBool(offsets[4], object.isFolder);
  writer.writeString(offsets[5], object.name);
  writer.writeLong(offsets[6], object.siteId);
}

CollectModel _collectModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CollectModel(
    fileFolderPath: reader.readStringOrNull(offsets[1]),
    folderId: reader.readLong(offsets[2]),
    fullPath: reader.readString(offsets[3]),
    id: id,
    isFolder: reader.readBool(offsets[4]),
    name: reader.readString(offsets[5]),
    siteId: reader.readLong(offsets[6]),
  );
  return object;
}

P _collectModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _collectModelGetId(CollectModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _collectModelGetLinks(CollectModel object) {
  return [];
}

void _collectModelAttach(
    IsarCollection<dynamic> col, Id id, CollectModel object) {}

extension CollectModelQueryWhereSort
    on QueryBuilder<CollectModel, CollectModel, QWhere> {
  QueryBuilder<CollectModel, CollectModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CollectModelQueryWhere
    on QueryBuilder<CollectModel, CollectModel, QWhereClause> {
  QueryBuilder<CollectModel, CollectModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CollectModelQueryFilter
    on QueryBuilder<CollectModel, CollectModel, QFilterCondition> {
  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      createDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      createDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      createDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      createDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fileFolderPath',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fileFolderPath',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileFolderPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fileFolderPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fileFolderPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fileFolderPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fileFolderPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fileFolderPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileFolderPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileFolderPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileFolderPath',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fileFolderPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileFolderPath',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      folderIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'folderId',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      folderIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'folderId',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      folderIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'folderId',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      folderIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'folderId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullPath',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      fullPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullPath',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      isFolderEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFolder',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> siteIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      siteIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition>
      siteIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterFilterCondition> siteIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'siteId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CollectModelQueryObject
    on QueryBuilder<CollectModel, CollectModel, QFilterCondition> {}

extension CollectModelQueryLinks
    on QueryBuilder<CollectModel, CollectModel, QFilterCondition> {}

extension CollectModelQuerySortBy
    on QueryBuilder<CollectModel, CollectModel, QSortBy> {
  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortByCreateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDate', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy>
      sortByCreateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDate', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy>
      sortByFileFolderPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileFolderPath', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy>
      sortByFileFolderPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileFolderPath', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortByFolderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'folderId', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortByFolderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'folderId', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortByFullPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullPath', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortByFullPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullPath', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortByIsFolder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFolder', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortByIsFolderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFolder', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortBySiteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> sortBySiteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.desc);
    });
  }
}

extension CollectModelQuerySortThenBy
    on QueryBuilder<CollectModel, CollectModel, QSortThenBy> {
  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByCreateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDate', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy>
      thenByCreateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDate', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy>
      thenByFileFolderPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileFolderPath', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy>
      thenByFileFolderPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileFolderPath', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByFolderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'folderId', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByFolderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'folderId', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByFullPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullPath', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByFullPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullPath', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByIsFolder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFolder', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByIsFolderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFolder', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenBySiteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.asc);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QAfterSortBy> thenBySiteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.desc);
    });
  }
}

extension CollectModelQueryWhereDistinct
    on QueryBuilder<CollectModel, CollectModel, QDistinct> {
  QueryBuilder<CollectModel, CollectModel, QDistinct> distinctByCreateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createDate');
    });
  }

  QueryBuilder<CollectModel, CollectModel, QDistinct> distinctByFileFolderPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileFolderPath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QDistinct> distinctByFolderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'folderId');
    });
  }

  QueryBuilder<CollectModel, CollectModel, QDistinct> distinctByFullPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QDistinct> distinctByIsFolder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFolder');
    });
  }

  QueryBuilder<CollectModel, CollectModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CollectModel, CollectModel, QDistinct> distinctBySiteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'siteId');
    });
  }
}

extension CollectModelQueryProperty
    on QueryBuilder<CollectModel, CollectModel, QQueryProperty> {
  QueryBuilder<CollectModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CollectModel, DateTime, QQueryOperations> createDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createDate');
    });
  }

  QueryBuilder<CollectModel, String?, QQueryOperations>
      fileFolderPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileFolderPath');
    });
  }

  QueryBuilder<CollectModel, int, QQueryOperations> folderIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'folderId');
    });
  }

  QueryBuilder<CollectModel, String, QQueryOperations> fullPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullPath');
    });
  }

  QueryBuilder<CollectModel, bool, QQueryOperations> isFolderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFolder');
    });
  }

  QueryBuilder<CollectModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CollectModel, int, QQueryOperations> siteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'siteId');
    });
  }
}
