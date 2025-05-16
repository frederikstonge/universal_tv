import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'episode_number.mapper.dart';

/// Represents the episode number of a programme.
///
/// This class corresponds to the 'episode-num' element in the XMLTV DTD.
/// It includes the episode number value and the system used for numbering.
@MappableClass()
class EpisodeNumber with EpisodeNumberMappable {
  final String value;
  final String system;

  EpisodeNumber({required this.value, required this.system});

  factory EpisodeNumber.fromXmlElement(XmlElement element) {
    return EpisodeNumber(value: element.value ?? '', system: element.getAttribute('system') ?? 'onscreen');
  }
}
