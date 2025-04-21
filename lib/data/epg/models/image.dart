import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'image.mapper.dart';

/// Represents an image associated with a programme.
///
/// This class corresponds to the 'image' element in the XMLTV DTD.
/// It includes the type of image, size, orientation, system, and the image URL.
@MappableClass()
class Image with ImageMappable {
  final String type;
  final String? size;
  final String? orient;
  final String? system;
  final String value;

  Image({required this.type, required this.value, this.size, this.orient, this.system});

  factory Image.fromXmlElement(XmlElement element) {
    return Image(
      type: element.getAttribute('type') ?? '',
      size: element.getAttribute('size'),
      orient: element.getAttribute('orient'),
      system: element.getAttribute('system'),
      value: element.value ?? '',
    );
  }
}
