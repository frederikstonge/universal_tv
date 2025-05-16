import '../file_type_header.dart';
import 'generic_entry.dart';

class M3uData {
  final FileTypeHeader fileType;
  final Map<String, String> metadata;
  final List<M3uGenericEntry> playlist;

  M3uData({required this.fileType, required this.metadata, required this.playlist});
}
