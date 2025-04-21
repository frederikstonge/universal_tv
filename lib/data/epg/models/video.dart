import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'video.mapper.dart';

/// Represents the video information of a programme.
///
/// This class corresponds to the 'video' element in the XMLTV DTD.
/// It includes details such as presence, color, aspect ratio, and quality.
@MappableClass()
class Video with VideoMappable {
  final String? present;
  final String? colour;
  final String? aspect;
  final String? quality;

  Video({this.present, this.colour, this.aspect, this.quality});

  factory Video.fromXmlElement(XmlElement element) {
    return Video(
      present: element.getElement('present')?.value,
      colour: element.getElement('colour')?.value,
      aspect: element.getElement('aspect')?.value,
      quality: element.getElement('quality')?.value,
    );
  }
}
