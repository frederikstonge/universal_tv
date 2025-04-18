import 'package:xml/xml.dart';
import 'models/epg/epg.dart';

/// Parses EPG (Electronic Program Guide) data from XML format.
class EpgParser {
  /// Parses the given XML string and returns a [EPG] object.
  ElectronicProgramGuide parse(String xmlString) {
    final document = XmlDocument.parse(xmlString);
    final epgXml = document.rootElement;
    return ElectronicProgramGuide.fromXmlElement(epgXml);
  }
}
