import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'premiere.mapper.dart';

/// Represents information about a premiere of a programme.
///
/// This class corresponds to the 'premiere' element in the XMLTV DTD.
/// It can include a language attribute to specify the premiere information in different languages.
@MappableClass()
class Premiere with PremiereMappable {
  final String? value;
  final String? lang;

  Premiere({this.value, this.lang});

  factory Premiere.fromXmlElement(XmlElement element) {
    return Premiere(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
