import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

import 'image.dart';
import 'url.dart';

part 'actor.mapper.dart';

/// Represents an actor in the credits of a programme.
///
/// This class corresponds to the 'actor' element in the XMLTV DTD.
/// It includes the actor's name, role, guest status, and associated images and URLs.
@MappableClass()
class Actor with ActorMappable {
  final String name;
  final String? role;
  final bool guest;
  final List<Image> images;
  final List<Url> urls;

  Actor({required this.name, required this.guest, required this.images, required this.urls, this.role});

  factory Actor.fromXmlElement(XmlElement element) {
    return Actor(
      name: element.value ?? '',
      role: element.getAttribute('role'),
      guest: element.getAttribute('guest') == 'yes',
      images: element.findElements('image').map(Image.fromXmlElement).toList(),
      urls: element.findElements('url').map(Url.fromXmlElement).toList(),
    );
  }
}
