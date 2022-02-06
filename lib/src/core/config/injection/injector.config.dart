// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/local/db/soldier_database.dart' as _i6;
import '../../services/services/personal_info_service.dart' as _i5;
import '../logger/logger_service.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.LoggerService>(() => _i3.LoggerService());
  gh.factory<_i5.PersonalInfoService>(() => _i5.PersonalInfoServiceImpl());
  gh.factory<_i6.SoldierDatabaseHelper>(() => _i6.SoldierDatabaseHelper());
  return get;
}
