import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'audio.mapper.dart';

/// Represents the audio information of a programme.
///
/// This class corresponds to the 'audio' element in the XMLTV DTD.
/// It includes details such as presence and stereo information.
@MappableClass()
class Audio with AudioMappable {
  final String? present;
  final String? stereo;

  Audio({this.present, this.stereo});

  factory Audio.fromXmlElement(XmlElement element) {
    return Audio(present: element.getElement('present')?.value, stereo: element.getElement('stereo')?.value);
  }
}
