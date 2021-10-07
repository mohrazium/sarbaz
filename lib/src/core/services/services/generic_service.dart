abstract class Service<T,M>{
  Future<void> save(M model);
  Future<M?> findById(T id);
  Future<List<M>?> findAll();
  Future<void> update(M model);
  Future<bool> delete(M model);
}