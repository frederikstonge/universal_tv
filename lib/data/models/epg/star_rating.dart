import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

import 'icon.dart';

part 'star_rating.mapper.dart';

/// Represents a star rating for a programme.
///
/// This class corresponds to the 'star-rating' element in the XMLTV DTD.
/// It includes the rating system, value, and associated icons.
@MappableClass()
class StarRating with StarRatingMappable {
  final String? system;
  final String value;
  final List<Icon> icons;

  StarRating({required this.value, required this.icons, this.system});

  factory StarRating.fromXmlElement(XmlElement element) {
    return StarRating(
      system: element.getAttribute('system'),
      value: element.getElement('value')?.value ?? '',
      icons: element.findElements('icon').map(Icon.fromXmlElement).toList(),
    );
  }
}
