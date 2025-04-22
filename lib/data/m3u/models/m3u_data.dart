import 'generic_entry.dart';

class M3uData {
  final Map<String, String> metadata;
  final List<M3uGenericEntry> playlist;

  M3uData({required this.metadata, required this.playlist});
}
