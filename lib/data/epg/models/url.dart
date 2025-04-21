import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'url.mapper.dart';

/// Represents a URL associated with a channel or programme.
///
/// This class corresponds to the 'url' element in the XMLTV DTD.
/// It can include a system attribute to specify the type or purpose of the URL.
@MappableClass()
class Url with UrlMappable {
  final String value;
  final String? system;

  Url({required this.value, this.system});

  factory Url.fromXmlElement(XmlElement element) {
    return Url(value: element.value ?? '', system: element.getAttribute('system'));
  }
}
