import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'keyword.mapper.dart';

/// Represents a keyword associated with a programme.
///
/// This class corresponds to the 'keyword' element in the XMLTV DTD.
/// It can include a language attribute to specify the keyword in different languages.
@MappableClass()
class Keyword with KeywordMappable {
  final String value;
  final String? lang;

  Keyword({required this.value, this.lang});

  factory Keyword.fromXmlElement(XmlElement element) {
    return Keyword(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
