import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'display_name.mapper.dart';

/// Represents a display name for a channel or programme.
///
/// This class corresponds to the 'display-name' element in the XMLTV DTD.
/// It can include a language attribute to specify the name in different languages.
@MappableClass()
class DisplayName with DisplayNameMappable {
  final String value;
  final String? lang;

  DisplayName({required this.value, this.lang});

  factory DisplayName.fromXmlElement(XmlElement element) {
    return DisplayName(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
