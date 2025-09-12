import '../models/xmltv_base.dart';
import '../models/xmltv_programme.dart';
import 'base_repository.dart';

abstract class XmltvBaseRepository implements BaseRepository {
  Future<bool> supportsShortEpg();
  Future<bool> supportsXmltv();
  Future<List<XmltvBase>> getXmltv();
  Future<List<XmltvProgramme>> getShortEpg();
}
