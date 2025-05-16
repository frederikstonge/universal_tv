import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

part 'category.mapper.dart';

/// Represents a category of a programme.
///
/// This class corresponds to the 'category' element in the XMLTV DTD.
/// It can include a language attribute to specify the category in different languages.
@MappableClass()
class Category with CategoryMappable {
  final String value;
  final String? lang;

  Category({required this.value, this.lang});

  factory Category.fromXmlElement(XmlElement element) {
    return Category(value: element.value ?? '', lang: element.getAttribute('lang'));
  }
}
