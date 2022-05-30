
import 'package:get_storage/get_storage.dart';

class PrefStorage {
  static void setup() async {
    await GetStorage.init('sarbaz');
  }

  final String _keyEligibleVacation = 'eligible';
  final String _keySickVacation = 'sick';
  final String _keyIncentiveLimit = 'incentive';
  final String _keyDBPath = 'DBPATH';

  double getEligibleVacationPerMonth() {
    var storage = GetStorage('sarbaz');
    final value = storage.read(_keyEligibleVacation);
    return value != null ? value as double : 0.0;
  }

  void saveEligibleVacationPerMonth(double amount) {
    var storage = GetStorage('sarbaz');
    storage.write(_keyEligibleVacation, amount);
  }

  String getDatabasePath() {
    var storage = GetStorage('sarbaz');
    final value = storage.read(_keyDBPath);
    return value != null ? value.toString() : "";
  }

  double getIncentiveLimit() {
    var storage = GetStorage('sarbaz');

    final value = storage.read(_keyIncentiveLimit);
    return value != null ? value as double : 0.0;
  }

  double getSickVacationPerMonth() {
    var storage = GetStorage('sarbaz');

    final value = storage.read(_keySickVacation);
    return value != null ? value as double : 0.0;
  }

  void saveDatabasePath(String path) {
    var storage = GetStorage('sarbaz');
    storage.write(_keyDBPath, path);
  }

  void saveIncentiveLimit(double amount) {
    var storage = GetStorage('sarbaz');
    storage.write(_keyIncentiveLimit, amount);
  }

  void saveSickVacationPerMonth(double amount) {
    var storage = GetStorage('sarbaz');
    storage.write(_keySickVacation, amount);
  }

  void saveLoginDetails(String userName, String pass) {
    var storage = GetStorage('sarbaz');
    storage.write(userName, pass);
  }

  bool login(String userName, String pass) {
    var storage = GetStorage('sarbaz');
    var password = storage.read(userName);
    return password == pass;
  }
}
