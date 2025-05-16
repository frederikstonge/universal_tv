import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

import 'display_name.dart';
import 'icon.dart';
import 'url.dart';

part 'channel.mapper.dart';

/// Represents a TV channel in the XMLTV format.
///
/// This class corresponds to the 'channel' element in the XMLTV DTD.
/// It contains information about a specific TV channel, including its
/// unique identifier, display names, icons, and URLs.
@MappableClass()
class Channel with ChannelMappable {
  final String id;
  final List<DisplayName> displayNames;
  final List<Icon> icons;
  final List<Url> urls;

  Channel({required this.id, required this.displayNames, required this.icons, required this.urls});

  /// Creates a [Channel] instance from an XML element.
  factory Channel.fromXmlElement(XmlElement element) {
    return Channel(
      id: element.getAttribute('id') ?? '',
      displayNames: element.findElements('display-name').map(DisplayName.fromXmlElement).toList(),
      icons: element.findElements('icon').map(Icon.fromXmlElement).toList(),
      urls: element.findElements('url').map(Url.fromXmlElement).toList(),
    );
  }
}
