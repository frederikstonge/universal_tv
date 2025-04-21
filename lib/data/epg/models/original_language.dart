import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'original_language.mapper.dart';

/// Represents the original language of a programme.
///
/// This class corresponds to the 'orig-language' element in the XMLTV DTD.
/// It can include a language attribute to specify the original language in different languages.
@MappableClass()
class OriginalLanguage with OriginalLanguageMappable {
  final String value;
  final String? lang;

  OriginalLanguage({required this.value, this.lang});

  factory OriginalLanguage.fromXmlElement(XmlElement element) {
    return OriginalLanguage(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
