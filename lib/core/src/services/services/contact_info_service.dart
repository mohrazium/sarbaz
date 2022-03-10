part of services;

abstract class ContactInfoService extends Service<int, ContactInfoModel> {}

class ContactInfoServiceImpl implements ContactInfoService {
  final ContactInfoDAO contactInfoDAO;

  ContactInfoServiceImpl(this.contactInfoDAO);
  @override
  Future<bool> delete(ContactInfoModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ContactInfoModel>?> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<ContactInfoModel?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(ContactInfoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(ContactInfoModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
