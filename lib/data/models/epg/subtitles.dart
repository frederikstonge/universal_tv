import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

import 'language.dart';

part 'subtitles.mapper.dart';

/// Represents subtitle information for a programme.
///
/// This class corresponds to the 'subtitles' element in the XMLTV DTD.
/// It includes the type of subtitles and the language they are in.
@MappableClass()
class Subtitles with SubtitlesMappable {
  final String? type;
  final Language? language;

  Subtitles({this.type, this.language});

  factory Subtitles.fromXmlElement(XmlElement element) {
    return Subtitles(
      type: element.getAttribute('type'),
      language:
          element.getElement('language') != null ? Language.fromXmlElement(element.getElement('language')!) : null,
    );
  }
}
