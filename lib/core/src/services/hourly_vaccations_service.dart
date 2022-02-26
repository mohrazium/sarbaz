
// //  var format = DateFormat("HH:mm:ss",);

// // var one = format.parse("08:23:00");
// // var two = format.parse("10:56:00");

// // print(two.difference(one));

// // TimeOfDay _startTime = TimeOfDay(
//   //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
part of services;
abstract class HourlyVaccationService extends Service<int, HourlyVaccationModel> {
  
}

class HourlyVaccationServiceImpl implements HourlyVaccationService {
  late final HourlyVaccationDAO hourlyVaccationDAO;

  HourlyVaccationServiceImpl() {
    hourlyVaccationDAO =
        Get.find<SoldierDatabaseHelper>().instance.hourlyVaccationDAO;
  }

  @override
  Future<bool> delete(HourlyVaccationModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<HourlyVaccationModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<HourlyVaccationModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(HourlyVaccationModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(HourlyVaccationModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
