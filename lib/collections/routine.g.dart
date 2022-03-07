// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetRoutineCollection on Isar {
  IsarCollection<Routine> get routines {
    return getCollection('Routine');
  }
}

final RoutineSchema = CollectionSchema(
  name: 'Routine',
  schema:
      '{"name":"Routine","idName":"id","properties":[{"name":"day","type":"String"},{"name":"startTime","type":"Long"},{"name":"title","type":"String"}],"indexes":[{"name":"day","unique":false,"properties":[{"name":"day","type":"Hash","caseSensitive":false}]},{"name":"startTime","unique":false,"properties":[{"name":"startTime","type":"Value","caseSensitive":false}]}],"links":[{"name":"category","target":"Category"}]}',
  nativeAdapter: const _RoutineNativeAdapter(),
  webAdapter: const _RoutineWebAdapter(),
  idName: 'id',
  propertyIds: {'day': 0, 'startTime': 1, 'title': 2},
  listProperties: {},
  indexIds: {'day': 0, 'startTime': 1},
  indexTypes: {
    'day': [
      NativeIndexType.stringHashCIS,
    ],
    'startTime': [
      NativeIndexType.long,
    ]
  },
  linkIds: {'category': 0},
  backlinkIds: {},
  linkedCollections: ['Category'],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [obj.category],
  version: 2,
);

class _RoutineWebAdapter extends IsarWebTypeAdapter<Routine> {
  const _RoutineWebAdapter();

  @override
  Object serialize(IsarCollection<Routine> collection, Routine object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'day', object.day);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(
        jsObj, 'startTime', object.startTime.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'title', object.title);
    return jsObj;
  }

  @override
  Routine deserialize(IsarCollection<Routine> collection, dynamic jsObj) {
    final object = Routine();
    object.day = IsarNative.jsObjectGet(jsObj, 'day') ?? '';
    object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
    object.startTime = IsarNative.jsObjectGet(jsObj, 'startTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'startTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0);
    object.title = IsarNative.jsObjectGet(jsObj, 'title') ?? '';
    attachLinks(collection.isar,
        IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'day':
        return (IsarNative.jsObjectGet(jsObj, 'day') ?? '') as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
            as P;
      case 'startTime':
        return (IsarNative.jsObjectGet(jsObj, 'startTime') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'startTime'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'title':
        return (IsarNative.jsObjectGet(jsObj, 'title') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Routine object) {
    object.category.attach(
      id,
      isar.routines,
      isar.getCollection<Category>('Category'),
      'category',
      false,
    );
  }
}

class _RoutineNativeAdapter extends IsarNativeTypeAdapter<Routine> {
  const _RoutineNativeAdapter();

  @override
  void serialize(IsarCollection<Routine> collection, IsarRawObject rawObj,
      Routine object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.day;
    final _day = IsarBinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += (_day.length) as int;
    final value1 = object.startTime;
    final _startTime = value1;
    final value2 = object.title;
    final _title = IsarBinaryWriter.utf8Encoder.convert(value2);
    dynamicSize += (_title.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _day);
    writer.writeDateTime(offsets[1], _startTime);
    writer.writeBytes(offsets[2], _title);
  }

  @override
  Routine deserialize(IsarCollection<Routine> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Routine();
    object.day = reader.readString(offsets[0]);
    object.id = id;
    object.startTime = reader.readDateTime(offsets[1]);
    object.title = reader.readString(offsets[2]);
    attachLinks(collection.isar, id, object);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readString(offset)) as P;
      case 1:
        return (reader.readDateTime(offset)) as P;
      case 2:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Routine object) {
    object.category.attach(
      id,
      isar.routines,
      isar.getCollection<Category>('Category'),
      'category',
      false,
    );
  }
}

extension RoutineQueryWhereSort on QueryBuilder<Routine, Routine, QWhere> {
  QueryBuilder<Routine, Routine, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<Routine, Routine, QAfterWhere> anyDay() {
    return addWhereClauseInternal(const WhereClause(indexName: 'day'));
  }

  QueryBuilder<Routine, Routine, QAfterWhere> anyStartTime() {
    return addWhereClauseInternal(const WhereClause(indexName: 'startTime'));
  }
}

extension RoutineQueryWhere on QueryBuilder<Routine, Routine, QWhereClause> {
  QueryBuilder<Routine, Routine, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> idGreaterThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> idLessThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> dayEqualTo(String day) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'day',
      lower: [day],
      includeLower: true,
      upper: [day],
      includeUpper: true,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> dayNotEqualTo(String day) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'day',
        upper: [day],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'day',
        lower: [day],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'day',
        lower: [day],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'day',
        upper: [day],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeEqualTo(
      DateTime startTime) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'startTime',
      lower: [startTime],
      includeLower: true,
      upper: [startTime],
      includeUpper: true,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeNotEqualTo(
      DateTime startTime) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'startTime',
        upper: [startTime],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'startTime',
        lower: [startTime],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'startTime',
        lower: [startTime],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'startTime',
        upper: [startTime],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeGreaterThan(
    DateTime startTime, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'startTime',
      lower: [startTime],
      includeLower: include,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeLessThan(
    DateTime startTime, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'startTime',
      upper: [startTime],
      includeUpper: include,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeBetween(
    DateTime lowerStartTime,
    DateTime upperStartTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'startTime',
      lower: [lowerStartTime],
      includeLower: includeLower,
      upper: [upperStartTime],
      includeUpper: includeUpper,
    ));
  }
}

extension RoutineQueryFilter
    on QueryBuilder<Routine, Routine, QFilterCondition> {
  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'day',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'day',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'startTime',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'startTime',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'startTime',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'startTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension RoutineQueryLinks
    on QueryBuilder<Routine, Routine, QFilterCondition> {
  QueryBuilder<Routine, Routine, QAfterFilterCondition> category(
      FilterQuery<Category> q) {
    return linkInternal(
      isar.categorys,
      q,
      'category',
    );
  }
}

extension RoutineQueryWhereSortBy on QueryBuilder<Routine, Routine, QSortBy> {
  QueryBuilder<Routine, Routine, QAfterSortBy> sortByDay() {
    return addSortByInternal('day', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByDayDesc() {
    return addSortByInternal('day', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByStartTime() {
    return addSortByInternal('startTime', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByStartTimeDesc() {
    return addSortByInternal('startTime', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension RoutineQueryWhereSortThenBy
    on QueryBuilder<Routine, Routine, QSortThenBy> {
  QueryBuilder<Routine, Routine, QAfterSortBy> thenByDay() {
    return addSortByInternal('day', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByDayDesc() {
    return addSortByInternal('day', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByStartTime() {
    return addSortByInternal('startTime', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByStartTimeDesc() {
    return addSortByInternal('startTime', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension RoutineQueryWhereDistinct
    on QueryBuilder<Routine, Routine, QDistinct> {
  QueryBuilder<Routine, Routine, QDistinct> distinctByDay(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('day', caseSensitive: caseSensitive);
  }

  QueryBuilder<Routine, Routine, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Routine, Routine, QDistinct> distinctByStartTime() {
    return addDistinctByInternal('startTime');
  }

  QueryBuilder<Routine, Routine, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }
}

extension RoutineQueryProperty
    on QueryBuilder<Routine, Routine, QQueryProperty> {
  QueryBuilder<Routine, String, QQueryOperations> dayProperty() {
    return addPropertyNameInternal('day');
  }

  QueryBuilder<Routine, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Routine, DateTime, QQueryOperations> startTimeProperty() {
    return addPropertyNameInternal('startTime');
  }

  QueryBuilder<Routine, String, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }
}
