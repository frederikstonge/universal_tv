import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

import 'actor.dart';

part 'credits.mapper.dart';

/// Represents the credits for a programme.
///
/// This class corresponds to the 'credits' element in the XMLTV DTD.
/// It includes various credit roles such as directors, actors, writers, producers, etc.
@MappableClass()
class Credits with CreditsMappable {
  final List<String> directors;
  final List<Actor> actors;
  final List<String> writers;
  final List<String> adapters;
  final List<String> producers;
  final List<String> composers;
  final List<String> editors;
  final List<String> presenters;
  final List<String> commentators;
  final List<String> guests;

  Credits({
    required this.directors,
    required this.actors,
    required this.writers,
    required this.adapters,
    required this.producers,
    required this.composers,
    required this.editors,
    required this.presenters,
    required this.commentators,
    required this.guests,
  });

  factory Credits.fromXmlElement(XmlElement element) {
    return Credits(
      directors: element.findElements('director').map((e) => e.value ?? '').toList(),
      actors: element.findElements('actor').map(Actor.fromXmlElement).toList(),
      writers: element.findElements('writer').map((e) => e.value ?? '').toList(),
      adapters: element.findElements('adapter').map((e) => e.value ?? '').toList(),
      producers: element.findElements('producer').map((e) => e.value ?? '').toList(),
      composers: element.findElements('composer').map((e) => e.value ?? '').toList(),
      editors: element.findElements('editor').map((e) => e.value ?? '').toList(),
      presenters: element.findElements('presenter').map((e) => e.value ?? '').toList(),
      commentators: element.findElements('commentator').map((e) => e.value ?? '').toList(),
      guests: element.findElements('guest').map((e) => e.value ?? '').toList(),
    );
  }
}
