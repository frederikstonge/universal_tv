import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

import 'channel.dart';
import 'programme.dart';

part 'electronic_program_guide.mapper.dart';

/// Represents the root element of an EPG (Electronic Program Guide) file.
///
/// This class is an implementation in Dart to parse XMLTV format, which is
/// a standard for representing TV listings. It's based on the XMLTV DTD
/// (Document Type Definition) available at:
/// [XMLTV DTD](https://github.com/XMLTV/xmltv/blob/master/xmltv.dtd)
///
/// The EPG contains all the information parsed from an XMLTV file,
/// including channels, programmes, and various metadata. It closely follows
/// the structure defined in the XMLTV DTD, allowing for comprehensive
/// representation of TV guide data.
@MappableClass()
class ElectronicProgramGuide with ElectronicProgramGuideMappable {
  final DateTime? date;
  final String? sourceInfoUrl;
  final String? sourceInfoName;
  final String? sourceDataUrl;
  final String? generatorInfoName;
  final String? generatorInfoUrl;
  final List<Channel> channels;
  final List<Programme> programmes;

  ElectronicProgramGuide({
    required this.channels,
    required this.programmes,
    this.date,
    this.sourceInfoUrl,
    this.sourceInfoName,
    this.sourceDataUrl,
    this.generatorInfoName,
    this.generatorInfoUrl,
  });

  /// Creates an [ElectronicProgramGuide] instance from an XML element.
  ///
  /// This factory constructor parses the given [XmlElement] and extracts
  /// all relevant information to create an [ElectronicProgramGuide] object. It follows the
  /// structure defined in the XMLTV DTD, parsing attributes such as 'date',
  /// 'source-info-url', 'source-info-name', etc., and creates lists of
  /// [Channel] and [Programme] objects from the corresponding XML elements.
  factory ElectronicProgramGuide.fromXmlElement(XmlElement element) {
    DateTime? parseDateTime(String? value) {
      return value != null && value.isNotEmpty ? DateTime.tryParse(value) : null;
    }

    return ElectronicProgramGuide(
      date: parseDateTime(element.getAttribute('date')),
      sourceInfoUrl: element.getAttribute('source-info-url'),
      sourceInfoName: element.getAttribute('source-info-name'),
      sourceDataUrl: element.getAttribute('source-data-url'),
      generatorInfoName: element.getAttribute('generator-info-name'),
      generatorInfoUrl: element.getAttribute('generator-info-url'),
      channels:
          element.findElements('channel').map((channelElement) {
            // Check if channelElement is not null before parsing
            return Channel.fromXmlElement(channelElement);
          }).toList(),
      programmes:
          element.findElements('programme').map((programmeElement) {
            // Check if programmeElement is not null before parsing
            return Programme.fromXmlElement(programmeElement);
          }).toList(),
    );
  }
}
