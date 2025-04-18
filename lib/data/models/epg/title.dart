import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'title.mapper.dart';

/// Represents a title of a programme.
///
/// This class corresponds to the 'title' element in the XMLTV DTD.
/// It can include a language attribute to specify the title in different languages.
@MappableClass()
class Title with TitleMappable {
  final String value;
  final String? lang;

  Title({required this.value, this.lang});

  factory Title.fromXmlElement(XmlElement element) {
    return Title(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
