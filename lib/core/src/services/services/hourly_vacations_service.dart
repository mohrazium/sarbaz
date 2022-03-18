// //  var format = DateFormat("HH:mm:ss",);

// // var one = format.parse("08:23:00");
// // var two = format.parse("10:56:00");

// // print(two.difference(one));

// // TimeOfDay _startTime = TimeOfDay(
//   //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
part of services;

abstract class HourlyVacationService
    extends Service<int, HourlyVacationModel> {}

class HourlyVacationServiceImpl implements HourlyVacationService {
   final HourlyVacationDAO hourlyVacationDAO;

  HourlyVacationServiceImpl(this.hourlyVacationDAO);

  @override
  Future<bool> delete(HourlyVacationModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<HourlyVacationModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<HourlyVacationModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<int> save(HourlyVacationModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update(HourlyVacationModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
