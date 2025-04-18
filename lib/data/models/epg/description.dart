import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'description.mapper.dart';

/// Represents a description of a programme.
///
/// This class corresponds to the 'desc' element in the XMLTV DTD.
/// It can include a language attribute to specify the description in different languages.
@MappableClass()
class Description with DescriptionMappable {
  final String value;
  final String? lang;

  Description({required this.value, this.lang});

  factory Description.fromXmlElement(XmlElement element) {
    return Description(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
