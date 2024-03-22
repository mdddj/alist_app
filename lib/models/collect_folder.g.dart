// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect_folder.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CollectFolderCWProxy {
  CollectFolder folderName(String folderName);

  CollectFolder siteId(int siteId);

  CollectFolder notes(String notes);

  CollectFolder isDefault(bool isDefault);

  CollectFolder canDelete(bool canDelete);

  CollectFolder isSelect(bool isSelect);

  CollectFolder isSelectByAddDialog(bool isSelectByAddDialog);

  CollectFolder id(int? id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectFolder(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectFolder(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectFolder call({
    String? folderName,
    int? siteId,
    String? notes,
    bool? isDefault,
    bool? canDelete,
    bool? isSelect,
    bool? isSelectByAddDialog,
    int? id,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCollectFolder.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCollectFolder.copyWith.fieldName(...)`
class _$CollectFolderCWProxyImpl implements _$CollectFolderCWProxy {
  const _$CollectFolderCWProxyImpl(this._value);

  final CollectFolder _value;

  @override
  CollectFolder folderName(String folderName) => this(folderName: folderName);

  @override
  CollectFolder siteId(int siteId) => this(siteId: siteId);

  @override
  CollectFolder notes(String notes) => this(notes: notes);

  @override
  CollectFolder isDefault(bool isDefault) => this(isDefault: isDefault);

  @override
  CollectFolder canDelete(bool canDelete) => this(canDelete: canDelete);

  @override
  CollectFolder isSelect(bool isSelect) => this(isSelect: isSelect);

  @override
  CollectFolder isSelectByAddDialog(bool isSelectByAddDialog) =>
      this(isSelectByAddDialog: isSelectByAddDialog);

  @override
  CollectFolder id(int? id) => this(id: id);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectFolder(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectFolder(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectFolder call({
    Object? folderName = const $CopyWithPlaceholder(),
    Object? siteId = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isDefault = const $CopyWithPlaceholder(),
    Object? canDelete = const $CopyWithPlaceholder(),
    Object? isSelect = const $CopyWithPlaceholder(),
    Object? isSelectByAddDialog = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return CollectFolder(
      folderName:
          folderName == const $CopyWithPlaceholder() || folderName == null
              ? _value.folderName
              // ignore: cast_nullable_to_non_nullable
              : folderName as String,
      siteId: siteId == const $CopyWithPlaceholder() || siteId == null
          ? _value.siteId
          // ignore: cast_nullable_to_non_nullable
          : siteId as int,
      notes: notes == const $CopyWithPlaceholder() || notes == null
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as String,
      isDefault: isDefault == const $CopyWithPlaceholder() || isDefault == null
          ? _value.isDefault
          // ignore: cast_nullable_to_non_nullable
          : isDefault as bool,
      canDelete: canDelete == const $CopyWithPlaceholder() || canDelete == null
          ? _value.canDelete
          // ignore: cast_nullable_to_non_nullable
          : canDelete as bool,
      isSelect: isSelect == const $CopyWithPlaceholder() || isSelect == null
          ? _value.isSelect
          // ignore: cast_nullable_to_non_nullable
          : isSelect as bool,
      isSelectByAddDialog:
          isSelectByAddDialog == const $CopyWithPlaceholder() ||
                  isSelectByAddDialog == null
              ? _value.isSelectByAddDialog
              // ignore: cast_nullable_to_non_nullable
              : isSelectByAddDialog as bool,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
    );
  }
}

extension $CollectFolderCopyWith on CollectFolder {
  /// Returns a callable class that can be used as follows: `instanceOfCollectFolder.copyWith(...)` or like so:`instanceOfCollectFolder.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CollectFolderCWProxy get copyWith => _$CollectFolderCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCollectFolderCollection on Isar {
  IsarCollection<CollectFolder> get collectFolders => this.collection();
}

const CollectFolderSchema = CollectionSchema(
  name: r'CollectFolder',
  id: 6387444638331321688,
  properties: {
    r'canDelete': PropertySchema(
      id: 0,
      name: r'canDelete',
      type: IsarType.bool,
    ),
    r'folderName': PropertySchema(
      id: 1,
      name: r'folderName',
      type: IsarType.string,
    ),
    r'isDefault': PropertySchema(
      id: 2,
      name: r'isDefault',
      type: IsarType.bool,
    ),
    r'notes': PropertySchema(
      id: 3,
      name: r'notes',
      type: IsarType.string,
    ),
    r'siteId': PropertySchema(
      id: 4,
      name: r'siteId',
      type: IsarType.long,
    )
  },
  estimateSize: _collectFolderEstimateSize,
  serialize: _collectFolderSerialize,
  deserialize: _collectFolderDeserialize,
  deserializeProp: _collectFolderDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _collectFolderGetId,
  getLinks: _collectFolderGetLinks,
  attach: _collectFolderAttach,
  version: '3.1.0+1',
);

int _collectFolderEstimateSize(
  CollectFolder object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.folderName.length * 3;
  bytesCount += 3 + object.notes.length * 3;
  return bytesCount;
}

void _collectFolderSerialize(
  CollectFolder object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.canDelete);
  writer.writeString(offsets[1], object.folderName);
  writer.writeBool(offsets[2], object.isDefault);
  writer.writeString(offsets[3], object.notes);
  writer.writeLong(offsets[4], object.siteId);
}

CollectFolder _collectFolderDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CollectFolder(
    canDelete: reader.readBoolOrNull(offsets[0]) ?? true,
    folderName: reader.readString(offsets[1]),
    id: id,
    isDefault: reader.readBoolOrNull(offsets[2]) ?? false,
    notes: reader.readString(offsets[3]),
    siteId: reader.readLong(offsets[4]),
  );
  return object;
}

P _collectFolderDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _collectFolderGetId(CollectFolder object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _collectFolderGetLinks(CollectFolder object) {
  return [];
}

void _collectFolderAttach(
    IsarCollection<dynamic> col, Id id, CollectFolder object) {}

extension CollectFolderQueryWhereSort
    on QueryBuilder<CollectFolder, CollectFolder, QWhere> {
  QueryBuilder<CollectFolder, CollectFolder, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CollectFolderQueryWhere
    on QueryBuilder<CollectFolder, CollectFolder, QWhereClause> {
  QueryBuilder<CollectFolder, CollectFolder, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<CollectFolder, CollectFolder, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterWhereClause> idBetween(
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

extension CollectFolderQueryFilter
    on QueryBuilder<CollectFolder, CollectFolder, QFilterCondition> {
  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      canDeleteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canDelete',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'folderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'folderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'folderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'folderName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'folderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'folderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'folderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'folderName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'folderName',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      folderNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'folderName',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      isDefaultEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDefault',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      siteIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
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

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
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

  QueryBuilder<CollectFolder, CollectFolder, QAfterFilterCondition>
      siteIdBetween(
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

extension CollectFolderQueryObject
    on QueryBuilder<CollectFolder, CollectFolder, QFilterCondition> {}

extension CollectFolderQueryLinks
    on QueryBuilder<CollectFolder, CollectFolder, QFilterCondition> {}

extension CollectFolderQuerySortBy
    on QueryBuilder<CollectFolder, CollectFolder, QSortBy> {
  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> sortByCanDelete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canDelete', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy>
      sortByCanDeleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canDelete', Sort.desc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> sortByFolderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'folderName', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy>
      sortByFolderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'folderName', Sort.desc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> sortByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy>
      sortByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.desc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> sortBySiteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> sortBySiteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.desc);
    });
  }
}

extension CollectFolderQuerySortThenBy
    on QueryBuilder<CollectFolder, CollectFolder, QSortThenBy> {
  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> thenByCanDelete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canDelete', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy>
      thenByCanDeleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canDelete', Sort.desc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> thenByFolderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'folderName', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy>
      thenByFolderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'folderName', Sort.desc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> thenByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy>
      thenByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.desc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> thenBySiteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.asc);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QAfterSortBy> thenBySiteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.desc);
    });
  }
}

extension CollectFolderQueryWhereDistinct
    on QueryBuilder<CollectFolder, CollectFolder, QDistinct> {
  QueryBuilder<CollectFolder, CollectFolder, QDistinct> distinctByCanDelete() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'canDelete');
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QDistinct> distinctByFolderName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'folderName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QDistinct> distinctByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDefault');
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CollectFolder, CollectFolder, QDistinct> distinctBySiteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'siteId');
    });
  }
}

extension CollectFolderQueryProperty
    on QueryBuilder<CollectFolder, CollectFolder, QQueryProperty> {
  QueryBuilder<CollectFolder, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CollectFolder, bool, QQueryOperations> canDeleteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'canDelete');
    });
  }

  QueryBuilder<CollectFolder, String, QQueryOperations> folderNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'folderName');
    });
  }

  QueryBuilder<CollectFolder, bool, QQueryOperations> isDefaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDefault');
    });
  }

  QueryBuilder<CollectFolder, String, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<CollectFolder, int, QQueryOperations> siteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'siteId');
    });
  }
}
