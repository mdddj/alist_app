// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_log.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMyLogCollection on Isar {
  IsarCollection<MyLog> get myLogs => this.collection();
}

const MyLogSchema = CollectionSchema(
  name: r'MyLog',
  id: -5338060460763556987,
  properties: {
    r'dateTime': PropertySchema(
      id: 0,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'log': PropertySchema(
      id: 1,
      name: r'log',
      type: IsarType.string,
    ),
    r'success': PropertySchema(
      id: 2,
      name: r'success',
      type: IsarType.bool,
    )
  },
  estimateSize: _myLogEstimateSize,
  serialize: _myLogSerialize,
  deserialize: _myLogDeserialize,
  deserializeProp: _myLogDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _myLogGetId,
  getLinks: _myLogGetLinks,
  attach: _myLogAttach,
  version: '3.1.0+1',
);

int _myLogEstimateSize(
  MyLog object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.log;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _myLogSerialize(
  MyLog object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateTime);
  writer.writeString(offsets[1], object.log);
  writer.writeBool(offsets[2], object.success);
}

MyLog _myLogDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MyLog();
  object.dateTime = reader.readDateTime(offsets[0]);
  object.id = id;
  object.log = reader.readStringOrNull(offsets[1]);
  object.success = reader.readBoolOrNull(offsets[2]);
  return object;
}

P _myLogDeserializeProp<P>(
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
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _myLogGetId(MyLog object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _myLogGetLinks(MyLog object) {
  return [];
}

void _myLogAttach(IsarCollection<dynamic> col, Id id, MyLog object) {
  object.id = id;
}

extension MyLogQueryWhereSort on QueryBuilder<MyLog, MyLog, QWhere> {
  QueryBuilder<MyLog, MyLog, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MyLogQueryWhere on QueryBuilder<MyLog, MyLog, QWhereClause> {
  QueryBuilder<MyLog, MyLog, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<MyLog, MyLog, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterWhereClause> idBetween(
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

extension MyLogQueryFilter on QueryBuilder<MyLog, MyLog, QFilterCondition> {
  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> dateTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> dateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> dateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> dateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'log',
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'log',
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'log',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'log',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'log',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'log',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'log',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'log',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'log',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'log',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'log',
        value: '',
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> logIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'log',
        value: '',
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> successIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'success',
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> successIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'success',
      ));
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterFilterCondition> successEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'success',
        value: value,
      ));
    });
  }
}

extension MyLogQueryObject on QueryBuilder<MyLog, MyLog, QFilterCondition> {}

extension MyLogQueryLinks on QueryBuilder<MyLog, MyLog, QFilterCondition> {}

extension MyLogQuerySortBy on QueryBuilder<MyLog, MyLog, QSortBy> {
  QueryBuilder<MyLog, MyLog, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> sortByLog() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'log', Sort.asc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> sortByLogDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'log', Sort.desc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> sortBySuccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'success', Sort.asc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> sortBySuccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'success', Sort.desc);
    });
  }
}

extension MyLogQuerySortThenBy on QueryBuilder<MyLog, MyLog, QSortThenBy> {
  QueryBuilder<MyLog, MyLog, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> thenByLog() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'log', Sort.asc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> thenByLogDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'log', Sort.desc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> thenBySuccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'success', Sort.asc);
    });
  }

  QueryBuilder<MyLog, MyLog, QAfterSortBy> thenBySuccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'success', Sort.desc);
    });
  }
}

extension MyLogQueryWhereDistinct on QueryBuilder<MyLog, MyLog, QDistinct> {
  QueryBuilder<MyLog, MyLog, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<MyLog, MyLog, QDistinct> distinctByLog(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'log', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MyLog, MyLog, QDistinct> distinctBySuccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'success');
    });
  }
}

extension MyLogQueryProperty on QueryBuilder<MyLog, MyLog, QQueryProperty> {
  QueryBuilder<MyLog, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MyLog, DateTime, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<MyLog, String?, QQueryOperations> logProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'log');
    });
  }

  QueryBuilder<MyLog, bool?, QQueryOperations> successProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'success');
    });
  }
}
