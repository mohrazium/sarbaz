part of data;

class PrefStorage {
  static void setup() async {
    await GetStorage.init('sarbaz');
  }

  final String _keyEligibleVacation = 'eligible';
  final String _keySickVacation = 'sick';
  final String _keyIncentiveLimit = 'incentive';
  final String _keyDBPath = 'DBPATH';
  final String _keyPass = 'pass';

  double getEligibleVacationPerMonth() {
    var _storage = GetStorage('sarbaz');
    final value = _storage.read(_keyEligibleVacation);
    return value != null ? value as double : 0.0;
  }

  void saveEligibleVacationPerMonth(double amount) {
    var _storage = GetStorage('sarbaz');
    _storage.write(_keyEligibleVacation, amount);
  }

  String getDatabasePath() {
    var _storage = GetStorage('sarbaz');
    final value = _storage.read(_keyDBPath);
    return value != null ? value.toString() : "";
  }

  double getIncentiveLimit() {
    var _storage = GetStorage('sarbaz');

    final value = _storage.read(_keyIncentiveLimit);
    return value != null ? value as double : 0.0;
  }

  double getSickVacationPerMonth() {
    var _storage = GetStorage('sarbaz');

    final value = _storage.read(_keySickVacation);
    return value != null ? value as double : 0.0;
  }

  void saveDatabasePath(String path) {
    var _storage = GetStorage('sarbaz');
    _storage.write(_keyDBPath, path);
  }

  void saveIncentiveLimit(double amount) {
    var _storage = GetStorage('sarbaz');
    _storage.write(_keyIncentiveLimit, amount);
  }

  void saveSickVacationPerMonth(double amount) {
    var _storage = GetStorage('sarbaz');
    _storage.write(_keySickVacation, amount);
  }

  void saveLoginDetails(String userName, String pass) {
    var _storage = GetStorage('sarbaz');
    _storage.write(userName, pass);
  }

  bool login(String userName, String pass) {
    var _storage = GetStorage('sarbaz');
    var password = _storage.read(userName);
    return password == pass;
  }
}
