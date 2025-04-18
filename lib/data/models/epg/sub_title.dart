import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'sub_title.mapper.dart';

/// Represents a subtitle of a programme.
///
/// This class corresponds to the 'sub-title' element in the XMLTV DTD.
/// It can include a language attribute to specify the subtitle in different languages.
@MappableClass()
class SubTitle with SubTitleMappable {
  final String value;
  final String? lang;

  SubTitle({required this.value, this.lang});

  factory SubTitle.fromXmlElement(XmlElement element) {
    return SubTitle(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
