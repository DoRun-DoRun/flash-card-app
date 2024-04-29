abstract class BaseRepository<T> {
  Future<void> save(T model);
  Future<T?> get();
  Future<void> delete();
}
