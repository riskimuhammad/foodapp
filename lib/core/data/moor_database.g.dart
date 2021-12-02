// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FavoriteData extends DataClass implements Insertable<FavoriteData> {
  final int id;
  final String name;
  final String image;
  final String categories;
  final String tags;
  final String idMeal;
  final bool completed;
  FavoriteData(
      {@required this.id,
      @required this.name,
      @required this.image,
      @required this.categories,
      @required this.tags,
      @required this.idMeal,
      @required this.completed});
  factory FavoriteData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return FavoriteData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      image: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image']),
      categories: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}categories']),
      tags: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tags']),
      idMeal: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_meal']),
      completed: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}completed']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || categories != null) {
      map['categories'] = Variable<String>(categories);
    }
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(tags);
    }
    if (!nullToAbsent || idMeal != null) {
      map['id_meal'] = Variable<String>(idMeal);
    }
    if (!nullToAbsent || completed != null) {
      map['completed'] = Variable<bool>(completed);
    }
    return map;
  }

  FavoriteCompanion toCompanion(bool nullToAbsent) {
    return FavoriteCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      categories: categories == null && nullToAbsent
          ? const Value.absent()
          : Value(categories),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      idMeal:
          idMeal == null && nullToAbsent ? const Value.absent() : Value(idMeal),
      completed: completed == null && nullToAbsent
          ? const Value.absent()
          : Value(completed),
    );
  }

  factory FavoriteData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FavoriteData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
      categories: serializer.fromJson<String>(json['categories']),
      tags: serializer.fromJson<String>(json['tags']),
      idMeal: serializer.fromJson<String>(json['idMeal']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
      'categories': serializer.toJson<String>(categories),
      'tags': serializer.toJson<String>(tags),
      'idMeal': serializer.toJson<String>(idMeal),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  FavoriteData copyWith(
          {int id,
          String name,
          String image,
          String categories,
          String tags,
          String idMeal,
          bool completed}) =>
      FavoriteData(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        categories: categories ?? this.categories,
        tags: tags ?? this.tags,
        idMeal: idMeal ?? this.idMeal,
        completed: completed ?? this.completed,
      );
  @override
  String toString() {
    return (StringBuffer('FavoriteData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('categories: $categories, ')
          ..write('tags: $tags, ')
          ..write('idMeal: $idMeal, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              image.hashCode,
              $mrjc(
                  categories.hashCode,
                  $mrjc(tags.hashCode,
                      $mrjc(idMeal.hashCode, completed.hashCode)))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteData &&
          other.id == this.id &&
          other.name == this.name &&
          other.image == this.image &&
          other.categories == this.categories &&
          other.tags == this.tags &&
          other.idMeal == this.idMeal &&
          other.completed == this.completed);
}

class FavoriteCompanion extends UpdateCompanion<FavoriteData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> image;
  final Value<String> categories;
  final Value<String> tags;
  final Value<String> idMeal;
  final Value<bool> completed;
  const FavoriteCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.categories = const Value.absent(),
    this.tags = const Value.absent(),
    this.idMeal = const Value.absent(),
    this.completed = const Value.absent(),
  });
  FavoriteCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String image,
    @required String categories,
    @required String tags,
    @required String idMeal,
    this.completed = const Value.absent(),
  })  : name = Value(name),
        image = Value(image),
        categories = Value(categories),
        tags = Value(tags),
        idMeal = Value(idMeal);
  static Insertable<FavoriteData> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> image,
    Expression<String> categories,
    Expression<String> tags,
    Expression<String> idMeal,
    Expression<bool> completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (categories != null) 'categories': categories,
      if (tags != null) 'tags': tags,
      if (idMeal != null) 'id_meal': idMeal,
      if (completed != null) 'completed': completed,
    });
  }

  FavoriteCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> image,
      Value<String> categories,
      Value<String> tags,
      Value<String> idMeal,
      Value<bool> completed}) {
    return FavoriteCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      categories: categories ?? this.categories,
      tags: tags ?? this.tags,
      idMeal: idMeal ?? this.idMeal,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (categories.present) {
      map['categories'] = Variable<String>(categories.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (idMeal.present) {
      map['id_meal'] = Variable<String>(idMeal.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('categories: $categories, ')
          ..write('tags: $tags, ')
          ..write('idMeal: $idMeal, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }
}

class $FavoriteTable extends Favorite
    with TableInfo<$FavoriteTable, FavoriteData> {
  final GeneratedDatabase _db;
  final String _alias;
  $FavoriteTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _imageMeta = const VerificationMeta('image');
  GeneratedTextColumn _image;
  @override
  GeneratedTextColumn get image => _image ??= _constructImage();
  GeneratedTextColumn _constructImage() {
    return GeneratedTextColumn('image', $tableName, false,
        minTextLength: 1, maxTextLength: 200);
  }

  final VerificationMeta _categoriesMeta = const VerificationMeta('categories');
  GeneratedTextColumn _categories;
  @override
  GeneratedTextColumn get categories => _categories ??= _constructCategories();
  GeneratedTextColumn _constructCategories() {
    return GeneratedTextColumn('categories', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _tagsMeta = const VerificationMeta('tags');
  GeneratedTextColumn _tags;
  @override
  GeneratedTextColumn get tags => _tags ??= _constructTags();
  GeneratedTextColumn _constructTags() {
    return GeneratedTextColumn('tags', $tableName, false,
        minTextLength: 1, maxTextLength: 200);
  }

  final VerificationMeta _idMealMeta = const VerificationMeta('idMeal');
  GeneratedTextColumn _idMeal;
  @override
  GeneratedTextColumn get idMeal => _idMeal ??= _constructIdMeal();
  GeneratedTextColumn _constructIdMeal() {
    return GeneratedTextColumn('id_meal', $tableName, false,
        minTextLength: 4, maxTextLength: 20);
  }

  final VerificationMeta _completedMeta = const VerificationMeta('completed');
  GeneratedBoolColumn _completed;
  @override
  GeneratedBoolColumn get completed => _completed ??= _constructCompleted();
  GeneratedBoolColumn _constructCompleted() {
    return GeneratedBoolColumn('completed', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, image, categories, tags, idMeal, completed];
  @override
  $FavoriteTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'favorite';
  @override
  final String actualTableName = 'favorite';
  @override
  VerificationContext validateIntegrity(Insertable<FavoriteData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image'], _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('categories')) {
      context.handle(
          _categoriesMeta,
          categories.isAcceptableOrUnknown(
              data['categories'], _categoriesMeta));
    } else if (isInserting) {
      context.missing(_categoriesMeta);
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags'], _tagsMeta));
    } else if (isInserting) {
      context.missing(_tagsMeta);
    }
    if (data.containsKey('id_meal')) {
      context.handle(_idMealMeta,
          idMeal.isAcceptableOrUnknown(data['id_meal'], _idMealMeta));
    } else if (isInserting) {
      context.missing(_idMealMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed'], _completedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteData map(Map<String, dynamic> data, {String tablePrefix}) {
    return FavoriteData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FavoriteTable createAlias(String alias) {
    return $FavoriteTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $FavoriteTable _favorite;
  $FavoriteTable get favorite => _favorite ??= $FavoriteTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favorite];
}
