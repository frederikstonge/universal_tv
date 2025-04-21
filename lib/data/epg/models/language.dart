import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'language.mapper.dart';

/// Represents the language of a programme.
///
/// This class corresponds to the 'language' element in the XMLTV DTD.
/// It can include a language attribute to specify the language in different languages.
@MappableClass()
class Language with LanguageMappable {
  final String value;
  final String? lang;

  Language({required this.value, this.lang});

  factory Language.fromXmlElement(XmlElement element) {
    return Language(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
