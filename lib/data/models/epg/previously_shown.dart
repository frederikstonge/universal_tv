import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'previously_shown.mapper.dart';

/// Represents information about a previously shown programme.
///
/// This class corresponds to the 'previously-shown' element in the XMLTV DTD.
/// It includes the start time and the channel where the programme was previously shown.
@MappableClass()
class PreviouslyShown with PreviouslyShownMappable {
  final DateTime? start;
  final String? channel;

  PreviouslyShown({this.start, this.channel});

  factory PreviouslyShown.fromXmlElement(XmlElement element) {
    DateTime? parseDateTime(String? value) {
      return value != null && value.isNotEmpty ? DateTime.parse(value) : null;
    }

    return PreviouslyShown(
      start: parseDateTime(element.getAttribute('start')),
      channel: element.getAttribute('channel'),
    );
  }
}
