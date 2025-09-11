abstract class BaseRepository {
  String get name;
  Future<void> load();
  Future<void> dispose();
}
