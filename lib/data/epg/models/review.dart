import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'review.mapper.dart';

/// Represents a review for a programme.
///
/// This class corresponds to the 'review' element in the XMLTV DTD.
/// It includes the type of review, source, reviewer, language, and the review text.
@MappableClass()
class Review with ReviewMappable {
  final String type;
  final String? source;
  final String? reviewer;
  final String? lang;
  final String value;

  Review({required this.type, required this.value, this.source, this.reviewer, this.lang});

  factory Review.fromXmlElement(XmlElement element) {
    return Review(
      type: element.getAttribute('type') ?? '',
      source: element.getAttribute('source'),
      reviewer: element.getAttribute('reviewer'),
      lang: element.getAttribute('lang'),
      value: element.value ?? '',
    );
  }
}
