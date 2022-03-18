part of services;

abstract class Service<T, M> {
  Future<T> save(M model);
  Future<M?> findById(T id);
  Future<List<M>?> findAll();
  Future<bool> update(M model);
  Future<bool> delete(M model);
}
