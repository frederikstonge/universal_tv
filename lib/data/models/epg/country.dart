import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'country.mapper.dart';

/// Represents a country associated with a programme.
///
/// This class corresponds to the 'country' element in the XMLTV DTD.
/// It can include a language attribute to specify the country in different languages.
@MappableClass()
class Country with CountryMappable {
  final String value;
  final String? lang;

  Country({required this.value, this.lang});

  factory Country.fromXmlElement(XmlElement element) {
    return Country(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
