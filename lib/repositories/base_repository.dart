abstract class BaseRepository {
  String get name;
  Stream<void> load();
  Future<void> dispose();
}
