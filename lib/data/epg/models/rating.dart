import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

import 'icon.dart';

part 'rating.mapper.dart';

/// Represents a rating for a programme.
///
/// This class corresponds to the 'rating' element in the XMLTV DTD.
/// It includes the rating system, value, and associated icons.
@MappableClass()
class Rating with RatingMappable {
  final String? system;
  final String value;
  final List<Icon> icons;

  Rating({required this.value, required this.icons, this.system});

  factory Rating.fromXmlElement(XmlElement element) {
    return Rating(
      system: element.getAttribute('system'),
      value: element.getElement('value')?.value ?? '',
      icons: element.findElements('icon').map(Icon.fromXmlElement).toList(),
    );
  }
}
