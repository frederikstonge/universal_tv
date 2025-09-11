import 'package:dart_mappable/dart_mappable.dart';

part 'xmltv_base.mapper.dart';

@MappableClass(discriminatorKey: 'type')
abstract class XmltvBase with XmltvBaseMappable {}
