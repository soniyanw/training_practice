// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Name extends DataClass implements Insertable<Name> {
  final int regno;
  final String name;
  final String place;
  const Name({required this.regno, required this.name, required this.place});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['regno'] = Variable<int>(regno);
    map['name'] = Variable<String>(name);
    map['place'] = Variable<String>(place);
    return map;
  }

  NamesCompanion toCompanion(bool nullToAbsent) {
    return NamesCompanion(
      regno: Value(regno),
      name: Value(name),
      place: Value(place),
    );
  }

  factory Name.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Name(
      regno: serializer.fromJson<int>(json['regno']),
      name: serializer.fromJson<String>(json['name']),
      place: serializer.fromJson<String>(json['place']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'regno': serializer.toJson<int>(regno),
      'name': serializer.toJson<String>(name),
      'place': serializer.toJson<String>(place),
    };
  }

  Name copyWith({int? regno, String? name, String? place}) => Name(
        regno: regno ?? this.regno,
        name: name ?? this.name,
        place: place ?? this.place,
      );
  @override
  String toString() {
    return (StringBuffer('Name(')
          ..write('regno: $regno, ')
          ..write('name: $name, ')
          ..write('place: $place')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(regno, name, place);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Name &&
          other.regno == this.regno &&
          other.name == this.name &&
          other.place == this.place);
}

class NamesCompanion extends UpdateCompanion<Name> {
  final Value<int> regno;
  final Value<String> name;
  final Value<String> place;
  const NamesCompanion({
    this.regno = const Value.absent(),
    this.name = const Value.absent(),
    this.place = const Value.absent(),
  });
  NamesCompanion.insert({
    this.regno = const Value.absent(),
    required String name,
    required String place,
  })  : name = Value(name),
        place = Value(place);
  static Insertable<Name> custom({
    Expression<int>? regno,
    Expression<String>? name,
    Expression<String>? place,
  }) {
    return RawValuesInsertable({
      if (regno != null) 'regno': regno,
      if (name != null) 'name': name,
      if (place != null) 'place': place,
    });
  }

  NamesCompanion copyWith(
      {Value<int>? regno, Value<String>? name, Value<String>? place}) {
    return NamesCompanion(
      regno: regno ?? this.regno,
      name: name ?? this.name,
      place: place ?? this.place,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (regno.present) {
      map['regno'] = Variable<int>(regno.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (place.present) {
      map['place'] = Variable<String>(place.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NamesCompanion(')
          ..write('regno: $regno, ')
          ..write('name: $name, ')
          ..write('place: $place')
          ..write(')'))
        .toString();
  }
}

class $NamesTable extends Names with TableInfo<$NamesTable, Name> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NamesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _regnoMeta = const VerificationMeta('regno');
  @override
  late final GeneratedColumn<int> regno = GeneratedColumn<int>(
      'regno', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _placeMeta = const VerificationMeta('place');
  @override
  late final GeneratedColumn<String> place = GeneratedColumn<String>(
      'place', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [regno, name, place];
  @override
  String get aliasedName => _alias ?? 'names';
  @override
  String get actualTableName => 'names';
  @override
  VerificationContext validateIntegrity(Insertable<Name> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('regno')) {
      context.handle(
          _regnoMeta, regno.isAcceptableOrUnknown(data['regno']!, _regnoMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('place')) {
      context.handle(
          _placeMeta, place.isAcceptableOrUnknown(data['place']!, _placeMeta));
    } else if (isInserting) {
      context.missing(_placeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {regno};
  @override
  Name map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Name(
      regno: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}regno'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      place: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}place'])!,
    );
  }

  @override
  $NamesTable createAlias(String alias) {
    return $NamesTable(attachedDatabase, alias);
  }
}

class NamesViewData extends DataClass {
  final String name;
  const NamesViewData({required this.name});
  factory NamesViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NamesViewData(
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
    };
  }

  NamesViewData copyWith({String? name}) => NamesViewData(
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('NamesViewData(')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => name.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NamesViewData && other.name == this.name);
}

class $NamesViewView extends ViewInfo<$NamesViewView, NamesViewData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$Database attachedDatabase;
  $NamesViewView(this.attachedDatabase, [this._alias]);
  $NamesTable get names => attachedDatabase.names.createAlias('t0');
  @override
  List<GeneratedColumn> get $columns => [names.name];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'names_view';
  @override
  String? get createViewStmt => null;
  @override
  $NamesViewView get asDslTable => this;
  @override
  NamesViewData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NamesViewData(
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string);
  @override
  $NamesViewView createAlias(String alias) {
    return $NamesViewView(attachedDatabase, alias);
  }

  @override
  Query? get query =>
      (attachedDatabase.selectOnly(names)..addColumns($columns));
  @override
  Set<String> get readTables => const {'names'};
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $NamesTable names = $NamesTable(this);
  late final $NamesViewView namesView = $NamesViewView(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [names, namesView];
}
