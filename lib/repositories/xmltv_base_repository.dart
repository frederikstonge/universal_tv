import 'package:muxa_xtream/muxa_xtream.dart';

abstract class XmltvBaseRepository {
  Future<void> load();
  Future<List<XtXmltvEvent>> getXmltv();
}
