import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'length.mapper.dart';

/// Represents the length of a programme.
///
/// This class corresponds to the 'length' element in the XMLTV DTD.
/// It includes the length value and the units of measurement.
@MappableClass()
class Length with LengthMappable {
  final int value;
  final String units;

  Length({required this.value, required this.units});

  factory Length.fromXmlElement(XmlElement element) {
    return Length(value: int.parse(element.value ?? ''), units: element.getAttribute('units') ?? '');
  }
}
