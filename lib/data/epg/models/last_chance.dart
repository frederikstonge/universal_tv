import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'last_chance.mapper.dart';

/// Represents information about the last chance to watch a programme.
///
/// This class corresponds to the 'last-chance' element in the XMLTV DTD.
/// It can include a language attribute to specify the last chance information in different languages.
@MappableClass()
class LastChance with LastChanceMappable {
  final String? value;
  final String? lang;

  LastChance({this.value, this.lang});

  factory LastChance.fromXmlElement(XmlElement element) {
    return LastChance(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
