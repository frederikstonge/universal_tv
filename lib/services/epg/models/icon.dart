import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'icon.mapper.dart';

/// Represents an icon (typically an image) associated with a channel or programme.
///
/// This class corresponds to the 'icon' element in the XMLTV DTD.
/// It includes the source URL of the icon and optional width and height attributes.
@MappableClass()
class Icon with IconMappable {
  final String src;
  final int? width;
  final int? height;

  Icon({required this.src, this.width, this.height});

  factory Icon.fromXmlElement(XmlElement element) {
    return Icon(
      src: element.getAttribute('src') ?? '',
      width: int.tryParse(element.getAttribute('width') ?? ''),
      height: int.tryParse(element.getAttribute('height') ?? ''),
    );
  }
}
