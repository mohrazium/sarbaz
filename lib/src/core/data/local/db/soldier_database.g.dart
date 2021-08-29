// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soldier_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorSoldierDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$SoldierDatabaseBuilder databaseBuilder(String name) =>
      _$SoldierDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$SoldierDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$SoldierDatabaseBuilder(null);
}

class _$SoldierDatabaseBuilder {
  _$SoldierDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$SoldierDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$SoldierDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<SoldierDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$SoldierDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$SoldierDatabase extends SoldierDatabase {
  _$SoldierDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PersonalInfoDAO? _personalInfDAOInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `tbl_personal_info` (`id` INTEGER NOT NULL, `nick_name` TEXT NOT NULL, `first_name` TEXT NOT NULL, `last_name` TEXT NOT NULL, `father_name` TEXT NOT NULL, `date_of_birth` TEXT NOT NULL, `marital_status` INTEGER NOT NULL, `number_of_children` INTEGER NOT NULL, `level_of_education` TEXT NOT NULL, `filed_of_study` TEXT NOT NULL, `mobile_number` TEXT NOT NULL, `telephone_number` TEXT NOT NULL, `address` TEXT NOT NULL, `distance` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PersonalInfoDAO get personalInfDAO {
    return _personalInfDAOInstance ??=
        _$PersonalInfoDAO(database, changeListener);
  }
}

class _$PersonalInfoDAO extends PersonalInfoDAO {
  _$PersonalInfoDAO(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _personalInfoTableInsertionAdapter = InsertionAdapter(
            database,
            'tbl_personal_info',
            (PersonalInfoTable item) => <String, Object?>{
                  'id': item.id,
                  'nick_name': item.nickName,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'father_name': item.fatherName,
                  'date_of_birth': item.dateOfBirth,
                  'marital_status': item.maritalStatus ? 1 : 0,
                  'number_of_children': item.numberOfChildren,
                  'level_of_education': item.levelOfEducation,
                  'filed_of_study': item.filedOfStudy,
                  'mobile_number': item.mobileNumber,
                  'telephone_number': item.telephoneNumber,
                  'address': item.address,
                  'distance': item.distance
                }),
        _personalInfoTableUpdateAdapter = UpdateAdapter(
            database,
            'tbl_personal_info',
            ['id'],
            (PersonalInfoTable item) => <String, Object?>{
                  'id': item.id,
                  'nick_name': item.nickName,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'father_name': item.fatherName,
                  'date_of_birth': item.dateOfBirth,
                  'marital_status': item.maritalStatus ? 1 : 0,
                  'number_of_children': item.numberOfChildren,
                  'level_of_education': item.levelOfEducation,
                  'filed_of_study': item.filedOfStudy,
                  'mobile_number': item.mobileNumber,
                  'telephone_number': item.telephoneNumber,
                  'address': item.address,
                  'distance': item.distance
                }),
        _personalInfoTableDeletionAdapter = DeletionAdapter(
            database,
            'tbl_personal_info',
            ['id'],
            (PersonalInfoTable item) => <String, Object?>{
                  'id': item.id,
                  'nick_name': item.nickName,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'father_name': item.fatherName,
                  'date_of_birth': item.dateOfBirth,
                  'marital_status': item.maritalStatus ? 1 : 0,
                  'number_of_children': item.numberOfChildren,
                  'level_of_education': item.levelOfEducation,
                  'filed_of_study': item.filedOfStudy,
                  'mobile_number': item.mobileNumber,
                  'telephone_number': item.telephoneNumber,
                  'address': item.address,
                  'distance': item.distance
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PersonalInfoTable> _personalInfoTableInsertionAdapter;

  final UpdateAdapter<PersonalInfoTable> _personalInfoTableUpdateAdapter;

  final DeletionAdapter<PersonalInfoTable> _personalInfoTableDeletionAdapter;

  @override
  Future<List<PersonalInfoTable>> findAllPersons() async {
    return _queryAdapter.queryList('SELECT * FROM tbl_personal_info;',
        mapper: (Map<String, Object?> row) => PersonalInfoTable(
            row['id'] as int,
            row['nick_name'] as String,
            row['first_name'] as String,
            row['last_name'] as String,
            row['father_name'] as String,
            row['date_of_birth'] as String,
            (row['marital_status'] as int) != 0,
            row['level_of_education'] as String,
            row['filed_of_study'] as String,
            row['mobile_number'] as String,
            row['telephone_number'] as String,
            row['address'] as String,
            row['distance'] as int));
  }

  @override
  Future<PersonalInfoTable?> findPersonalInfoById(int id) async {
    return _queryAdapter.query('SELECT * FROM tbl_personal_info WHERE id=?1',
        mapper: (Map<String, Object?> row) => PersonalInfoTable(
            row['id'] as int,
            row['nick_name'] as String,
            row['first_name'] as String,
            row['last_name'] as String,
            row['father_name'] as String,
            row['date_of_birth'] as String,
            (row['marital_status'] as int) != 0,
            row['level_of_education'] as String,
            row['filed_of_study'] as String,
            row['mobile_number'] as String,
            row['telephone_number'] as String,
            row['address'] as String,
            row['distance'] as int),
        arguments: [id]);
  }

  @override
  Future<void> insertPersonalInfo(PersonalInfoTable info) async {
    await _personalInfoTableInsertionAdapter.insert(
        info, OnConflictStrategy.abort);
  }

  @override
  Future<void> updatePersonalInfo(PersonalInfoTable info) async {
    await _personalInfoTableUpdateAdapter.update(
        info, OnConflictStrategy.abort);
  }

  @override
  Future<void> deletePersonalInfo(PersonalInfoTable info) async {
    await _personalInfoTableDeletionAdapter.delete(info);
  }
}
